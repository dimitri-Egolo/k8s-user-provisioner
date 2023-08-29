from app import app
from dotenv import load_dotenv

load_dotenv(
    "/vault/secrets/config",
)

if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=False)