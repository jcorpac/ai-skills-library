import os

def create_flask_factory():
    """Creates a professional Flask Application Factory structure."""
    dirs = [
        "app",
        "app/blueprints",
        "app/blueprints/main",
        "app/blueprints/auth",
        "app/templates",
        "app/static",
        "migrations",
        "tests"
    ]
    
    files = {
        "app/__init__.py": "# Application Factory\nfrom flask import Flask\n\ndef create_app():\n    app = Flask(__name__)\n    return app",
        "app/blueprints/main/__init__.py": "from flask import Blueprint\nmain_bp = Blueprint('main', __name__)\nfrom . import routes",
        "app/blueprints/main/routes.py": "from . import main_bp\n\n@main_bp.route('/')\ndef index():\n    return 'Hello World'",
        "config.py": "class Config:\n    SECRET_KEY = 'dev-key'",
        "run.py": "from app import create_app\napp = create_app()\n\nif __name__ == '__main__':\n    app.run(debug=True)",
        ".env": "FLASK_APP=run.py\nFLASK_DEBUG=1"
    }
    
    for d in dirs:
        os.makedirs(d, exist_ok=True)
    
    for path, content in files.items():
        with open(path, "w") as f:
            f.write(content)
            
    print("Full-Stack Flask structure created successfully.")

if __name__ == "__main__":
    create_flask_factory()
