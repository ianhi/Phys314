︠42b46cff-43af-4f0e-ba6e-a2518b90fa47︠
var('t_obs rho tau_minus tau_plus')
pretty_print_default()
pretty_print((1+rho)*(tau_minus*tau_plus)/(tau_plus+rho*tau_minus))
solve((1+rho)*(tau_minus*tau_plus)/(tau_plus+rho*tau_minus)==t_obs, tau_plus)

︡e33148de-5dc2-4df4-8c7b-b19f7a37fce2︡︡{"stdout":"(t_obs, rho, tau_minus, tau_plus)\n","done":false}︡{"html":"<div align='center'>$\\displaystyle \\frac{{\\left(\\rho + 1\\right)} \\tau_{\\mathit{minus}} \\tau_{\\mathit{plus}}}{\\rho \\tau_{\\mathit{minus}} + \\tau_{\\mathit{plus}}}$</div>","done":false}︡{"html":"<div align='center'>[$\\displaystyle \\tau_{\\mathit{plus}} = \\frac{\\rho t_{\\mathit{obs}} \\tau_{\\mathit{minus}}}{{\\left(\\rho + 1\\right)} \\tau_{\\mathit{minus}} - t_{\\mathit{obs}}}$]</div>","done":false}︡{"done":true}
︠330c651a-d109-475e-8d41-b316a2f80860s︠
var('t_obs rho tau_minus tau_plus')
f=solve((1+rho)*(tau_minus*tau_plus)/(tau_plus+rho*tau_minus)==t_obs, tau_plus)[0].rhs()
tau_minus=2043
rho=1.3
pretty_print_default()
pretty_print(f)
pretty_print(f(t_obs=2026,rho=1.3,tau_minus=2043).n())

pretty_print(f(rho=1.3,tau_minus=2043))
pretty_print(f(t_obs=2087).n())
︡de0e2f96-afc2-4ca0-87f8-f3d2caf78863︡︡{"html":"<div align='center'>($\\displaystyle t_{\\mathit{obs}}$, $\\displaystyle \\rho$, $\\displaystyle \\tau_{\\mathit{minus}}$, $\\displaystyle \\tau_{\\mathit{plus}}$)</div>","done":false}︡{"html":"<div align='center'>$\\displaystyle \\frac{\\rho t_{\\mathit{obs}} \\tau_{\\mathit{minus}}}{{\\left(\\rho + 1\\right)} \\tau_{\\mathit{minus}} - t_{\\mathit{obs}}}$</div>","done":false}︡{"html":"<div align='center'>$\\displaystyle 2013.11437015975$</div>","done":false}︡{"html":"<div align='center'>$\\displaystyle -\\frac{2655.90000000000 \\, t_{\\mathit{obs}}}{1.00000000000000 \\, t_{\\mathit{obs}} - 4698.90000000000}$</div>","done":false}︡{"done":false,"stderr":"Error in lines 9-9\nTraceback (most recent call last):\n  File \"/projects/sage/sage-6.9/local/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 905, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\n  File \"sage/symbolic/expression.pyx\", line 5263, in sage.symbolic.expression.Expression._numerical_approx (/projects/sage/sage-6.9/src/build/cythonized/sage/symbolic/expression.cpp:30452)\n    raise TypeError(\"cannot evaluate symbolic expression numerically\")\nTypeError: cannot evaluate symbolic expression numerically\n"}︡{"done":true}
︠90c65a0a-6f42-4811-8901-4058087fd10d︠

20430*2026/(10*2026-46989).n()
︡60757e42-3f5b-4069-a2e0-9c3adff05012︡︡{"html":"<div align='center'>$\\displaystyle -1548.54951550750$</div>","done":false}︡{"done":true}
︠44d9bb4c-14a0-469b-9dfa-82ee50b9debf︠
2026*2043

from uncertainties import *
t_obs=ufloat(2026,57)
pretty_print(f(t_obs=ufloat(2026,57)).n())
︡98976d5b-a0ed-4d96-881e-9a60f2778916︡︡{"html":"<div align='center'>$\\displaystyle 4139118$</div>","done":false}︡{"done":false,"stderr":"Error in lines 2-2\nTraceback (most recent call last):\n  File \"/projects/sage/sage-6.9/local/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 905, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\nImportError: No module named uncertainties\n"}︡{"done":true}
︠b01c2ce6-4e22-4fed-9915-1983a1d012e3︠

f=solve((1+rho)*(tau_minus*tau_plus)/(tau_plus+rho*tau_minus)==t_obs, rho)[0].rhs()
f
g=(1+rho)*(tau_minus*tau_plus)/(tau_plus+rho*tau_minus)
g
z=(1+rho)*(1/tau_minus+rho/tau_plus)^-1
z
solve(z==t_obs,tau_plus)
︡606b7894-f35c-498c-9848-a656e4a4e97c︡︡{"html":"<div align='center'>$\\displaystyle -\\frac{{\\left(t_{\\mathit{obs}} - \\tau_{\\mathit{minus}}\\right)} \\tau_{\\mathit{plus}}}{t_{\\mathit{obs}} \\tau_{\\mathit{minus}} - \\tau_{\\mathit{minus}} \\tau_{\\mathit{plus}}}$</div>","done":false}︡{"html":"<div align='center'>$\\displaystyle \\frac{{\\left(\\rho + 1\\right)} \\tau_{\\mathit{minus}} \\tau_{\\mathit{plus}}}{\\rho \\tau_{\\mathit{minus}} + \\tau_{\\mathit{plus}}}$</div>","done":false}︡{"html":"<div align='center'>$\\displaystyle \\frac{\\rho + 1}{\\frac{\\rho}{\\tau_{\\mathit{plus}}} + \\frac{1}{\\tau_{\\mathit{minus}}}}$</div>","done":false}︡{"html":"<div align='center'>[$\\displaystyle \\tau_{\\mathit{plus}} = \\frac{\\rho t_{\\mathit{obs}} \\tau_{\\mathit{minus}}}{{\\left(\\rho + 1\\right)} \\tau_{\\mathit{minus}} - t_{\\mathit{obs}}}$]</div>","done":false}︡{"done":true}
︠5c4785b6-bbe9-4a31-930b-be8149e21411s︠



15*10^3/(.9998*3*10^8)*10^6
︡1859f9ee-2a9f-4bee-8ed6-0e4f9c10b798︡︡{"html":"<div align='center'>$\\displaystyle 50.0100020004001$</div>","done":false}︡{"done":true}
︠4b7e4484-e934-4b2d-9b55-5b3379956d0ds︠
1/sqrt(1-.9988^2)
︡256dba08-d985-4a06-8c9a-22d8aa9256f4︡︡{"html":"<div align='center'>$\\displaystyle 20.4185410046049$</div>","done":false}︡{"done":true}
︠0f048194-9bdc-4bb6-96c1-949da9a12600s︠
1-1/40^2.n()
︡50a70ac8-ab1d-49f0-9769-100602701111︡︡{"html":"<div align='center'>$\\displaystyle 0.999375000000000$</div>","done":false}︡{"done":true}
︠f84b384b-2f11-4740-956e-141fe6c42250s︠

15*10^3/(.999375*10^8)*10^6
︡d0ff77c2-c5e8-4151-80ad-870c296a4603︡︡{"html":"<div align='center'>$\\displaystyle 150.093808630394$</div>","done":false}︡{"done":true}
︠d4c69a68-978f-4f3f-a88f-3ff539c189d3s︠
150/40.n()
︡bd038a80-01f2-483a-ac7a-85f8c2792bf7︡︡{"html":"<div align='center'>$\\displaystyle 3.75000000000000$</div>","done":false}︡{"done":true}
︠fcb71153-8e8b-4838-9363-167a1363598c︠









