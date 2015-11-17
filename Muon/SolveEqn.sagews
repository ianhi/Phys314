︠42b46cff-43af-4f0e-ba6e-a2518b90fa47s︠
var('t_obs rho tau_minus tau_plus')
pretty_print_default()
pretty_print((1+rho)*(tau_minus*tau_plus)/(tau_plus+rho*tau_minus))
solve((1+rho)*(tau_minus*tau_plus)/(tau_plus+rho*tau_minus)==t_obs, tau_plus)

︡e33148de-5dc2-4df4-8c7b-b19f7a37fce2︡︡{"stdout":"(t_obs, rho, tau_minus, tau_plus)\n","done":false}︡{"html":"<div align='center'>$\\displaystyle \\frac{{\\left(\\rho + 1\\right)} \\tau_{\\mathit{minus}} \\tau_{\\mathit{plus}}}{\\rho \\tau_{\\mathit{minus}} + \\tau_{\\mathit{plus}}}$</div>","done":false}︡{"html":"<div align='center'>[$\\displaystyle \\tau_{\\mathit{plus}} = \\frac{\\rho t_{\\mathit{obs}} \\tau_{\\mathit{minus}}}{{\\left(\\rho + 1\\right)} \\tau_{\\mathit{minus}} - t_{\\mathit{obs}}}$]</div>","done":false}︡{"done":true}
︠330c651a-d109-475e-8d41-b316a2f80860︠
tau_minus=2043
rho=1.3
f=solve((1+rho)*(tau_minus*tau_plus)/(tau_plus+rho*tau_minus)==t_obs, tau_plus)[0].rhs()
pretty_print_default()
pretty_print(f)
pretty_print(f(t_obs=2026).n())
pretty_print(f(t_obs=2087).n())
︡f257e88b-8840-4cfd-b040-627d6880193e︡︡{"html":"<div align='center'>$\\displaystyle -\\frac{26559 \\, t_{\\mathit{obs}}}{10 \\, t_{\\mathit{obs}} - 46989}$</div>","done":false}︡{"html":"<div align='center'>$\\displaystyle 2013.11437015975$</div>","done":false}︡{"html":"<div align='center'>$\\displaystyle 2122.15754814503$</div>","done":false}︡{"done":true}
︠90c65a0a-6f42-4811-8901-4058087fd10d︠

20430*2026/(10*2026-46989).n()
︡60757e42-3f5b-4069-a2e0-9c3adff05012︡︡{"html":"<div align='center'>$\\displaystyle -1548.54951550750$</div>","done":false}︡{"done":true}
︠44d9bb4c-14a0-469b-9dfa-82ee50b9debf︠
2026*2043

from uncertainties import *
t_obs=ufloat(2026,57)
pretty_print(f(t_obs=ufloat(2026,57)).n())
︡98976d5b-a0ed-4d96-881e-9a60f2778916︡︡{"html":"<div align='center'>$\\displaystyle 4139118$</div>","done":false}︡{"done":false,"stderr":"Error in lines 2-2\nTraceback (most recent call last):\n  File \"/projects/sage/sage-6.9/local/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 905, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\nImportError: No module named uncertainties\n"}︡{"done":true}
︠b01c2ce6-4e22-4fed-9915-1983a1d012e3s︠

f=solve((1+rho)*(tau_minus*tau_plus)/(tau_plus+rho*tau_minus)==t_obs, rho)[0].rhs()
f
g=(1+rho)*(tau_minus*tau_plus)/(tau_plus+rho*tau_minus)
g
z=(1+rho)*(1/tau_minus+rho/tau_plus)^-1
z
solve(z==t_obs,tau_plus)
︡606b7894-f35c-498c-9848-a656e4a4e97c︡︡{"html":"<div align='center'>$\\displaystyle -\\frac{{\\left(t_{\\mathit{obs}} - \\tau_{\\mathit{minus}}\\right)} \\tau_{\\mathit{plus}}}{t_{\\mathit{obs}} \\tau_{\\mathit{minus}} - \\tau_{\\mathit{minus}} \\tau_{\\mathit{plus}}}$</div>","done":false}︡{"html":"<div align='center'>$\\displaystyle \\frac{{\\left(\\rho + 1\\right)} \\tau_{\\mathit{minus}} \\tau_{\\mathit{plus}}}{\\rho \\tau_{\\mathit{minus}} + \\tau_{\\mathit{plus}}}$</div>","done":false}︡{"html":"<div align='center'>$\\displaystyle \\frac{\\rho + 1}{\\frac{\\rho}{\\tau_{\\mathit{plus}}} + \\frac{1}{\\tau_{\\mathit{minus}}}}$</div>","done":false}︡{"html":"<div align='center'>[$\\displaystyle \\tau_{\\mathit{plus}} = \\frac{\\rho t_{\\mathit{obs}} \\tau_{\\mathit{minus}}}{{\\left(\\rho + 1\\right)} \\tau_{\\mathit{minus}} - t_{\\mathit{obs}}}$]</div>","done":false}︡{"done":true}
︠5c4785b6-bbe9-4a31-930b-be8149e21411︠









