import axios, { AxiosInstance } from "axios";

// change the baseURL to whatever your resource is called
// example -> baseURL: "https://<resource_name_here>/"
// connection has to be secure ( HTTPS )

const baseURL = location.hostname.split("cfx-nui-", 2)

const api: AxiosInstance = axios.create({
   baseURL: `https://${baseURL[1]}`,
});

export default api;