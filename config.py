import os
from datetime import timedelta

# ================================================================================
# 🔧 アプリケーション設定 (完全修正版)
# ================================================================================

class Config:
    """基本設定"""
    SECRET_KEY = os.environ.get('SECRET_KEY', 'your-secret-key-change-this-in-production')
    FLASK_ENV = os.environ.get('FLASK_ENV', 'development')
    
    # ✅ セッション設定
    PERMANENT_SESSION_LIFETIME = timedelta(days=7)
    
    # 【重要】ログインループ回避のため、本番でもHTTPならFalseにする
    # 環境変数で制御するか、強制的にFalseにします
    SESSION_COOKIE_SECURE = False
    
    SESSION_COOKIE_HTTPONLY = True
    SESSION_COOKIE_SAMESITE = 'Lax'
    SESSION_REFRESH_EACH_REQUEST = False

    CACHE_DURATION = 300
    API_TIMEOUT = 5
    MAX_WORKERS = 20

    DATABASE_URL = os.environ.get('DATABASE_URL')
    if DATABASE_URL and DATABASE_URL.startswith('postgres://'):
        DATABASE_URL = DATABASE_URL.replace('postgres://', 'postgresql://', 1)
    
    USE_POSTGRES = DATABASE_URL is not None

class DevelopmentConfig(Config):
    """開発環境設定"""
    DEBUG = True
    TESTING = False

class ProductionConfig(Config):
    """本番環境設定"""
    DEBUG = False
    TESTING = False

class TestingConfig(Config):
    """テスト環境設定"""
    TESTING = True
    DEBUG = True

# 環境に応じた設定を選択
config_by_env = {
    'development': DevelopmentConfig,
    'production': ProductionConfig,
    'testing': TestingConfig,
    'default': DevelopmentConfig
}

# 【修正ポイント】引数があってもなくても動くように変更
def get_config(config_name=None):
    """環境に応じた設定を取得"""
    if config_name is None:
        config_name = os.environ.get('FLASK_ENV', 'development')
    
    return config_by_env.get(config_name, DevelopmentConfig)
