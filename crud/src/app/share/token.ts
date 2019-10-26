
export enum TokenVar {
    token_type = "token_type",
    expires_in = "expires_in",
    access_token = "access_token",
    refresh_token = "refresh_token",
}

export class Token {
    token_type: string;
    expires_in: string;
    access_token: string;
    refresh_token: string;

    constructor(token_type: string, expires_in: string, access_token: string, refresh_token: string) {
        this.token_type = token_type;
        this.expires_in = expires_in;
        this.access_token = access_token;
        this.refresh_token = refresh_token;

        this.setTokenConstruct();
    }

    public setTokenConstruct() {
        this.setToken(this.access_token);
        this.setTokenType(this.token_type);
        this.setTokenRefresh(this.refresh_token);
    }

    getTokenType(): string {
        return localStorage.getItem(TokenVar.token_type);
    }

    getTokenRefresh(): string {
        return localStorage.getItem(TokenVar.refresh_token);
    }

    getToken(): String {
        return localStorage.getItem(TokenVar.access_token);
    }

    setToken(token: string) {
        localStorage.setItem(TokenVar.access_token, token);
    }

    setTokenType(tokenType: string) {
        localStorage.setItem(TokenVar.token_type, tokenType);
    }

    setTokenRefresh(tokenRefresh: string) {
        localStorage.setItem(TokenVar.refresh_token, tokenRefresh);
    }
}