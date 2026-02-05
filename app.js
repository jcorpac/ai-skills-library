const skillsGrid = document.getElementById('skills-grid');
const searchInput = document.getElementById('skill-search');
const modal = document.getElementById('modal');
const modalContent = document.getElementById('content-viewer');
const closeModal = document.getElementById('close-modal');
const modalOverlay = document.getElementById('modal-overlay');

let allSkills = [];

// Initialize
async function init() {
    try {
        // Fetch the README to parse the inventory
        const response = await fetch('README.md');
        const text = await response.text();

        // Simple lines parser to capture categories and skills
        const lines = text.split('\n');
        let currentCategory = 'General';

        lines.forEach(line => {
            // Check for category headings: ### Category Name
            const categoryMatch = line.match(/^### (.*)/);
            if (categoryMatch) {
                currentCategory = categoryMatch[1].trim();
            }

            // Check for skill rows: - **[name](./path)**: description
            const skillRegex = /- \*\*\[(.*?)\]\(\.\/(.*?)\)\*\*: (.*)/;
            const skillMatch = line.match(skillRegex);

            if (skillMatch) {
                allSkills.push({
                    name: skillMatch[1],
                    path: skillMatch[2],
                    description: skillMatch[3],
                    category: currentCategory,
                    tags: inferTags(skillMatch[2])
                });
            }
        });

        renderSkills(allSkills);
    } catch (err) {
        console.error('Failed to load skills:', err);
        skillsGrid.innerHTML = '<div class="error">Failed to load skills library.</div>';
    }
}

function inferTags(path) {
    if (path.startsWith('tdd')) return ['TDD', 'Quality'];
    if (path.startsWith('ds')) return ['Data Science', 'Python'];
    if (path.startsWith('ml')) return ['MLOps', 'AI'];
    if (path.startsWith('ops') || path.startsWith('docker') || path.startsWith('gh')) return ['DevOps', 'Docker'];
    if (path.startsWith('flask')) return ['Web', 'Flask'];
    if (path.startsWith('api')) return ['API', 'Backend'];
    if (path.startsWith('ui')) return ['Frontend', 'Design'];
    if (path.startsWith('git')) return ['Git', 'VCS'];
    if (path.startsWith('mcp')) return ['MCP', 'Architecture'];
    if (path.startsWith('meta')) return ['Meta', 'Agentic'];
    return ['General'];
}

function renderSkills(skills) {
    skillsGrid.innerHTML = '';

    if (skills.length === 0) {
        skillsGrid.innerHTML = '<div class="no-results">No skills match your search.</div>';
        return;
    }

    // Group skills by category
    const grouped = skills.reduce((acc, skill) => {
        if (!acc[skill.category]) acc[skill.category] = [];
        acc[skill.category].push(skill);
        return acc;
    }, {});

    Object.keys(grouped).forEach(category => {
        // Create category section
        const section = document.createElement('section');
        section.className = 'skill-category';
        section.innerHTML = `
            <h2 class="category-title">${category}</h2>
            <div class="category-grid"></div>
        `;

        const grid = section.querySelector('.category-grid');

        grouped[category].forEach(skill => {
            const card = document.createElement('div');
            card.className = 'skill-card';
            card.innerHTML = `
                <div class="skill-name">${skill.name}</div>
                <div class="skill-desc">${skill.description}</div>
                <div class="skill-meta">
                    ${skill.tags.map(tag => `<span class="tag">${tag}</span>`).join('')}
                </div>
            `;
            card.onclick = () => openSkill(skill);
            grid.appendChild(card);
        });

        skillsGrid.appendChild(section);
    });
}

// Search Logic
searchInput.addEventListener('input', (e) => {
    const term = e.target.value.toLowerCase();
    const filtered = allSkills.filter(s =>
        s.name.toLowerCase().includes(term) ||
        s.description.toLowerCase().includes(term) ||
        s.tags.some(t => t.toLowerCase().includes(term))
    );
    renderSkills(filtered);
});

// Modal Logic
async function openSkill(skill) {
    modal.classList.add('active');
    modalContent.innerHTML = 'Loading content...';

    try {
        const response = await fetch(`${skill.path}/SKILL.md`);
        const text = await response.text();

        // Remove YAML frontmatter if present
        const cleanText = text.replace(/^---[\s\S]*?---/, '');

        modalContent.innerHTML = marked.parse(cleanText);

        // Update URL hash
        window.location.hash = skill.path;
    } catch (err) {
        modalContent.innerHTML = 'Error loading skill details.';
    }
}

function close() {
    modal.classList.remove('active');
    window.location.hash = '';
}

closeModal.onclick = close;
modalOverlay.onclick = close;

// Handle back/forward and direct links
window.addEventListener('hashchange', () => {
    const path = window.location.hash.slice(1);
    if (!path) close();
    else {
        const skill = allSkills.find(s => s.path === path);
        if (skill) openSkill(skill);
    }
});

// Initial load check for hash
window.addEventListener('load', () => {
    init().then(() => {
        const path = window.location.hash.slice(1);
        if (path) {
            const skill = allSkills.find(s => s.path === path);
            if (skill) openSkill(skill);
        }
    });
});
