//Generated by wsdl2apex

public class AsyncUSzip {
    public class GetInfoByAreaCodeResponse_elementFuture extends System.WebServiceCalloutFuture {
        public USzip.GetInfoByAreaCodeResult_element getValue() {
            USzip.GetInfoByAreaCodeResponse_element response = (USzip.GetInfoByAreaCodeResponse_element)System.WebServiceCallout.endInvoke(this);
            return response.GetInfoByAreaCodeResult;
        }
    }
    public class GetInfoByStateResponse_elementFuture extends System.WebServiceCalloutFuture {
        public USzip.GetInfoByStateResult_element getValue() {
            USzip.GetInfoByStateResponse_element response = (USzip.GetInfoByStateResponse_element)System.WebServiceCallout.endInvoke(this);
            return response.GetInfoByStateResult;
        }
    }
    public class GetInfoByCityResponse_elementFuture extends System.WebServiceCalloutFuture {
        public USzip.GetInfoByCityResult_element getValue() {
            USzip.GetInfoByCityResponse_element response = (USzip.GetInfoByCityResponse_element)System.WebServiceCallout.endInvoke(this);
            return response.GetInfoByCityResult;
        }
    }
    public class GetInfoByZIPResponse_elementFuture extends System.WebServiceCalloutFuture {
        public USzip.GetInfoByZIPResult_element getValue() {
            USzip.GetInfoByZIPResponse_element response = (USzip.GetInfoByZIPResponse_element)System.WebServiceCallout.endInvoke(this);
            return response.GetInfoByZIPResult;
        }
    }
    public class AsyncUSZipSoap {
        public String endpoint_x = 'http://www.webservicex.net/uszip.asmx';
        public Map<String,String> inputHttpHeaders_x;
        public String clientCertName_x;
        public Integer timeout_x;
        private String[] ns_map_type_info = new String[]{'http://www.webserviceX.NET', 'USzip'};
        public AsyncUSzip.GetInfoByAreaCodeResponse_elementFuture beginGetInfoByAreaCode(System.Continuation continuation,String USAreaCode) {
            USzip.GetInfoByAreaCode_element request_x = new USzip.GetInfoByAreaCode_element();
            request_x.USAreaCode = USAreaCode;
            return (AsyncUSzip.GetInfoByAreaCodeResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncUSzip.GetInfoByAreaCodeResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              'http://www.webserviceX.NET/GetInfoByAreaCode',
              'http://www.webserviceX.NET',
              'GetInfoByAreaCode',
              'http://www.webserviceX.NET',
              'GetInfoByAreaCodeResponse',
              'USzip.GetInfoByAreaCodeResponse_element'}
            );
        }
        public AsyncUSzip.GetInfoByStateResponse_elementFuture beginGetInfoByState(System.Continuation continuation,String USState) {
            USzip.GetInfoByState_element request_x = new USzip.GetInfoByState_element();
            request_x.USState = USState;
            return (AsyncUSzip.GetInfoByStateResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncUSzip.GetInfoByStateResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              'http://www.webserviceX.NET/GetInfoByState',
              'http://www.webserviceX.NET',
              'GetInfoByState',
              'http://www.webserviceX.NET',
              'GetInfoByStateResponse',
              'USzip.GetInfoByStateResponse_element'}
            );
        }
        public AsyncUSzip.GetInfoByCityResponse_elementFuture beginGetInfoByCity(System.Continuation continuation,String USCity) {
            USzip.GetInfoByCity_element request_x = new USzip.GetInfoByCity_element();
            request_x.USCity = USCity;
            return (AsyncUSzip.GetInfoByCityResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncUSzip.GetInfoByCityResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              'http://www.webserviceX.NET/GetInfoByCity',
              'http://www.webserviceX.NET',
              'GetInfoByCity',
              'http://www.webserviceX.NET',
              'GetInfoByCityResponse',
              'USzip.GetInfoByCityResponse_element'}
            );
        }
        public AsyncUSzip.GetInfoByZIPResponse_elementFuture beginGetInfoByZIP(System.Continuation continuation,String USZip) {
            USzip.GetInfoByZIP_element request_x = new USzip.GetInfoByZIP_element();
            request_x.USZip = USZip;
            return (AsyncUSzip.GetInfoByZIPResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncUSzip.GetInfoByZIPResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              'http://www.webserviceX.NET/GetInfoByZIP',
              'http://www.webserviceX.NET',
              'GetInfoByZIP',
              'http://www.webserviceX.NET',
              'GetInfoByZIPResponse',
              'USzip.GetInfoByZIPResponse_element'}
            );
        }
    }
}