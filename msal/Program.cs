// See https://aka.ms/new-console-template for more information
using System.Threading.Tasks;
using Microsoft.Identity.Client;
namespace msaal
public class Program{
    public static async Main(string[] args){
        private const string _clientId = "APPLICATION_CLIENT_ID";
        private const string _tenantId = "DIRECTORY_TENANT_ID";

        Console.WriteLine("Hello, World!");

        var app = PublicClientApplicationBuilder
            .Create(_clientId)
            .WithAuthority(AzureCloudInstance.AzurePublic, _tenantId)
            .WithRedirectUri("http://localhost")
            .Build();

        string[] scopes = { "user.read" };

        AuthenticationResult result = await app.AcquireTokenInteractive(scopes).ExecuteAsync();

        Console.WriteLine($"Token:\t{result.AccessToken}");
    }
}
