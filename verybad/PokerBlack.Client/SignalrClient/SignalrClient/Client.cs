using Microsoft.AspNet.SignalR.Client;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SignalrClient
{
    public class Client : IDisposable
    {
        public Client(string url)
        {
            Url = url;
        }

        public string Url { get; }
        private HubConnection _connection;
        private IHubProxy _proxy;

        public async Task Connect(string hubName)
        {
            _connection = new HubConnection(Url);
            _proxy = _connection.CreateHubProxy(hubName);
            await _connection.Start();
        }

        public void AddListener(string eventName, Action<TransportObjectWraper> handler)
        {
            _proxy.On(eventName, handler);
        }

        




        public void Dispose()
        {
            _connection?.Dispose();
        }
    }
}
