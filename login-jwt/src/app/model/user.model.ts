export interface UserModelServer {
    id: number
    email: string
    password: string
    firstname: string
    lastname: string
    accessToken?: string,
    refreshToken: string,
    role: string
}