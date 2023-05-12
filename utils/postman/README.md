
Teste para adicionar token nos parametros de variáveis
```javascript
var json = pm.response.json();
pm.environment.set("TOKEN", json.tokenAPI);
```

Teste 2 para adicionar token nos parametros de variáveis
```javascript
pm.environment.set("TOKEN", pm.response.headers.get("Authorization"));
```