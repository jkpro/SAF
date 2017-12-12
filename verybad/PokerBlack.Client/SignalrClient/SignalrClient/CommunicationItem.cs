using System;

namespace SignalrClient
{
    public class CommunicationItem
    {
        public TimeSpan Span { get; set; }

        public CommunicationSource Source { get; set; }

        public string Request { get; set; }

        public string Response { get; set; }
    }

    public enum CommunicationSource
    {
        ClientRequest,
        ServerResponse,
        Event
    }
}
