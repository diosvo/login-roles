export interface ProductModelServer {
    id: number;
    title: string;
    image: string;
    description: string;
    price: number;
}

export interface ServerResponse {
    count: number;
    products: ProductModelServer[];
} 