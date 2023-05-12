Usando pipe start with e start with tap
```javascript
 this.tiposDeOs$ = this.serviceOdersService.getServiceOrdersTypes(this.tokenStorageService.getCicloSelecionado()).pipe(
      startWith([{"codCic":7,"codTipOs":"3","descrTipOs":"MERCHANDISING","operacoesOs":[]}]),
      startWithTap(() => {this.loadingOsType = true;}),
      finalize(() => {
        this.loadingOsType = false;        
      })
    );
```