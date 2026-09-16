using AppWebSamuelButzke.Components;
using AppWebSamuelButzke.Configs;
using AppWebSamuelButzke.DAO;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddScoped<Conexao>();
builder.Services.AddScoped<ProcessoDAO>();

builder.Services.AddRazorComponents()
    .AddInteractiveServerComponents();

var app = builder.Build();

app.UseAntiforgery();

app.MapStaticAssets();

app.MapRazorComponents<App>()
    .AddInteractiveServerRenderMode();

app.Run();