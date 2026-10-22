<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Controle de IP</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    
    <style>
        * { box-sizing: border-box; }
        
        body { 
            margin: 0; 
            font-family: 'Inter', sans-serif; 
            /* Fundo Gradiente Moderno */
            background: linear-gradient(135deg, #0f172a 0%, #1e1b4b 100%);
            height: 100vh; 
            display: flex; 
            align-items: center; 
            justify-content: center; 
            overflow: hidden;
        }

        /* Efeito de fundo sutil (Opcional) */
        body::before {
            content: '';
            position: absolute;
            width: 120%;
            height: 120%;
            background: radial-gradient(circle at 50% 50%, rgba(79, 70, 229, 0.15) 0%, transparent 50%);
            pointer-events: none;
        }

        .login-container {
            width: 100%;
            max-width: 420px;
            padding: 20px;
            z-index: 1;
            animation: slideUp 0.6s cubic-bezier(0.16, 1, 0.3, 1);
        }

        /* Cartão de Login */
        .login-box { 
            background: rgba(255, 255, 255, 0.98); 
            padding: 40px; 
            border-radius: 16px; 
            box-shadow: 0 25px 50px -12px rgba(0, 0, 0, 0.5); 
            text-align: center;
            border: 1px solid rgba(255, 255, 255, 0.1);
        }

        /* Cabeçalho */
        .brand-logo {
            font-size: 3rem;
            color: #4f46e5;
            margin-bottom: 10px;
        }
        
        h2 { 
            color: #1e293b; 
            margin: 0 0 5px 0; 
            font-size: 1.5rem; 
            font-weight: 700; 
        }
        
        .subtitle {
            color: #64748b;
            font-size: 0.9rem;
            margin-bottom: 30px;
        }

        /* Inputs com Ícones */
        .input-group {
            position: relative;
            margin-bottom: 20px;
            text-align: left;
        }

        .input-group i {
            position: absolute;
            left: 15px;
            top: 50%;
            transform: translateY(-50%);
            color: #94a3b8;
            transition: color 0.3s;
        }

        input { 
            width: 100%; 
            padding: 14px 14px 14px 45px; /* Espaço para o ícone */
            border: 1px solid #cbd5e1; 
            border-radius: 10px; 
            font-size: 1rem;
            outline: none;
            transition: all 0.3s;
            background: #f8fafc;
            font-family: 'Inter', sans-serif;
        }

        /* Efeito ao clicar no input */
        input:focus { 
            border-color: #4f46e5; 
            background: #fff;
            box-shadow: 0 0 0 4px rgba(79, 70, 229, 0.1);
        }
        
        input:focus + i {
            color: #4f46e5;
        }

        /* Botão */
        button { 
            width: 100%; 
            padding: 14px; 
            background: linear-gradient(135deg, #4f46e5, #6366f1); 
            color: white; 
            border: none; 
            border-radius: 10px; 
            font-weight: 600; 
            cursor: pointer; 
            font-size: 1rem; 
            transition: transform 0.2s, box-shadow 0.2s;
            box-shadow: 0 4px 12px rgba(79, 70, 229, 0.3);
        }

        button:hover { 
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(79, 70, 229, 0.5);
            filter: brightness(1.1);
        }
        
        button:active { transform: translateY(0); }

        /* Mensagem de Erro */
        .error { 
            background-color: #fee2e2; 
            color: #ef4444; 
            padding: 12px; 
            border-radius: 8px; 
            font-size: 0.9rem; 
            margin-bottom: 20px;
            border: 1px solid #fecaca;
            display: flex;
            align-items: center;
            gap: 8px;
            justify-content: center;
        }

        .footer { margin-top: 25px; font-size: 0.85rem; color: #94a3b8; }

        @keyframes slideUp {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>

    <div class="login-container">
        <div class="login-box">
            <div class="brand-logo">
                <i class="fas fa-shield-alt"></i>
            </div>
            <h2>Acesso Restrito</h2>
            <div class="subtitle">Entre com suas credenciais de técnico.</div>

            {% if error %}
                <div class="error">
                    <i class="fas fa-exclamation-circle"></i> {{ error }}
                </div>
            {% endif %}

            <form method="POST">
                <div class="input-group">
                    <input type="text" name="username" placeholder="Usuário" required autofocus>
                    <i class="fas fa-user"></i>
                </div>

                <div class="input-group">
                    <input type="password" name="password" placeholder="Senha" required>
                    <i class="fas fa-lock"></i>
                </div>

                <button type="submit">
                    Acessar Sistema <i class="fas fa-arrow-right" style="margin-left:8px; font-size:0.9rem;"></i>
                </button>
            </form>

            <div class="footer">
    Desenvolvido por <strong style="color: #4f46e5;">CPD</strong>
    <br>
    <span style="opacity: 0.7; font-size: 0.8rem;">&copy; 2026 Unip</span>
</div>
        </div>
    </div>

</body>
</html>
