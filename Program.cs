var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

app.MapGet("/", () => new { message = "Hello from .NET!" });
app.MapGet("/health", () => new { status = "healthy" });

app.Run();
