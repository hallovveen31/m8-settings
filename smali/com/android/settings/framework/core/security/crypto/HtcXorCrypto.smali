.class public Lcom/android/settings/framework/core/security/crypto/HtcXorCrypto;
.super Ljava/lang/Object;
.source "HtcXorCrypto.java"


# static fields
.field public static final EXTRA_KEY_CRYPTO_KEY:Ljava/lang/String; = "extra_crypto_key"

.field public static final EXTRA_KEY_PASSWORD:Ljava/lang/String; = "password"

.field private static KEY_ALPHABET:Ljava/lang/String;

.field public static MAX_KEY_LENGTH:I

.field private static final SECURITY_DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/security/crypto/HtcXorCrypto;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/security/crypto/HtcXorCrypto;->TAG:Ljava/lang/String;

    .line 56
    const/16 v0, 0x10

    sput v0, Lcom/android/settings/framework/core/security/crypto/HtcXorCrypto;->MAX_KEY_LENGTH:I

    .line 58
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

    sput-object v0, Lcom/android/settings/framework/core/security/crypto/HtcXorCrypto;->KEY_ALPHABET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .parameter "bundle"

    .prologue
    .line 188
    if-nez p0, :cond_1

    .line 189
    const/4 p0, 0x0

    .line 204
    .local v0, key:Ljava/lang/String;
    .local v1, password:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 192
    .end local v0           #key:Ljava/lang/String;
    .end local v1           #password:Ljava/lang/String;
    :cond_1
    const-string v2, "password"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    .restart local v1       #password:Ljava/lang/String;
    const-string v2, "extra_crypto_key"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .restart local v0       #key:Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 197
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Lost the cryto key"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 200
    :cond_2
    invoke-static {v1, v0}, Lcom/android/settings/framework/core/security/crypto/HtcXorCrypto;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    const-string v2, "password"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v2, "extra_crypto_key"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"
    .parameter "key"

    .prologue
    .line 146
    invoke-static {p0, p1}, Lcom/android/settings/framework/core/security/crypto/HtcXorCrypto;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encrypt(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .parameter "bundle"

    .prologue
    .line 159
    if-nez p0, :cond_1

    .line 160
    const/4 p0, 0x0

    .line 174
    .local v1, password:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 163
    .end local v1           #password:Ljava/lang/String;
    :cond_1
    const-string v2, "password"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    .restart local v1       #password:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 165
    invoke-static {}, Lcom/android/settings/framework/core/security/crypto/HtcXorCrypto;->getRandomKey()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, key:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/settings/framework/core/security/crypto/HtcXorCrypto;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    const-string v2, "password"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v2, "extra_crypto_key"

    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "value"
    .parameter "key"

    .prologue
    .line 112
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 113
    .local v2, length:I
    new-array v0, v2, [C

    .line 127
    .local v0, encryptedValue:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 128
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 129
    .local v3, x:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    rem-int v6, v1, v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 130
    .local v4, y:I
    xor-int v5, v3, v4

    .line 131
    .local v5, z:I
    int-to-char v6, v5

    aput-char v6, v0, v1

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v3           #x:I
    .end local v4           #y:I
    .end local v5           #z:I
    :cond_0
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([C)V

    return-object v6
.end method

.method public static getRandomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget v0, Lcom/android/settings/framework/core/security/crypto/HtcXorCrypto;->MAX_KEY_LENGTH:I

    invoke-static {v0}, Lcom/android/settings/framework/core/security/crypto/HtcXorCrypto;->getRandomKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRandomKey(I)Ljava/lang/String;
    .locals 7
    .parameter "maxKeyLength"

    .prologue
    .line 79
    if-gtz p0, :cond_0

    .line 80
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The length of the key must be a positive value."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 84
    :cond_0
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 86
    .local v4, random:Ljava/util/Random;
    invoke-virtual {v4, p0}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    .line 87
    .local v3, length:I
    new-array v2, v3, [C

    .line 90
    .local v2, key:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 91
    sget-object v5, Lcom/android/settings/framework/core/security/crypto/HtcXorCrypto;->KEY_ALPHABET:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 92
    .local v1, index:I
    sget-object v5, Lcom/android/settings/framework/core/security/crypto/HtcXorCrypto;->KEY_ALPHABET:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v2, v0

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    .end local v1           #index:I
    :cond_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([C)V

    return-object v5
.end method
