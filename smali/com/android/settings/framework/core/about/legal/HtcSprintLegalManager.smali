.class public Lcom/android/settings/framework/core/about/legal/HtcSprintLegalManager;
.super Ljava/lang/Object;
.source "HtcSprintLegalManager.java"

# interfaces
.implements Lcom/android/settings/framework/core/about/legal/HtcOmadmSpec;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/about/legal/HtcSprintLegalManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/about/legal/HtcSprintLegalManager;->TAG:Ljava/lang/String;

    .line 35
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/about/legal/HtcSprintLegalManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doesRemoteLegalExist(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 117
    invoke-static {p0}, Lcom/android/settings/framework/core/about/legal/HtcSprintLegalManager;->getRemoteLegalFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private static getLocalLegalFileContent(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 163
    invoke-static {}, Lcom/android/settings/framework/core/about/legal/HtcSprintLegalManager;->getRemoteBrandAlpha()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, brandAlpha:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/framework/core/about/legal/HtcSprintLegalManager;->getRemoteHomepage()Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, homepage:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings/framework/core/about/legal/HtcSprintLegalManager;->isCustomizable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 187
    invoke-static {p0, v1, v8}, Lcom/android/settings/framework/core/about/legal/HtcSprintLegalManager;->getRemotePrivateAlertForContent(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, privacyAlert:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070002

    invoke-static {v5, v6}, Lcom/android/settings/framework/content/res/HtcResources;->getRawString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, message:Ljava/lang/String;
    const/4 v0, 0x0

    .line 224
    .local v0, DEBUG_HIGHLIGH:Z
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v7

    aput-object v1, v5, v8

    const/4 v6, 0x2

    aput-object v2, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 229
    return-object v3

    .line 192
    .end local v0           #DEBUG_HIGHLIGH:Z
    .end local v3           #message:Ljava/lang/String;
    .end local v4           #privacyAlert:Ljava/lang/String;
    :cond_0
    const v5, 0x7f0c0042

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 194
    const v5, 0x7f0c0043

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 196
    invoke-static {p0, v1, v7}, Lcom/android/settings/framework/core/about/legal/HtcSprintLegalManager;->getRemotePrivateAlertForContent(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #privacyAlert:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 67
    invoke-static {p0}, Lcom/android/settings/framework/core/about/legal/HtcSprintLegalManager;->doesRemoteLegalExist(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    invoke-static {p0}, Lcom/android/settings/framework/core/about/legal/HtcSprintLegalManager;->getRemoteLegalFileContent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, message:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 72
    .end local v1           #message:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/android/settings/framework/core/about/legal/HtcSprintLegalManager;->isSprintChameleon()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    invoke-static {p0}, Lcom/android/settings/framework/core/about/legal/HtcSprintLegalManager;->getLocalLegalFileContent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #message:Ljava/lang/String;
    goto :goto_0

    .line 75
    .end local v1           #message:Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v2, "getMessage(...): Unknow case!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n - sku_id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSkuId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n - CID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->getCurrentCID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    .restart local v1       #message:Ljava/lang/String;
    sget-object v2, Lcom/android/settings/framework/core/about/legal/HtcSprintLegalManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v2, v3, v4}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getRemoteBrandAlpha()Ljava/lang/String;
    .locals 2

    .prologue
    .line 241
    sget-object v1, Lcom/android/settings/framework/core/about/legal/HtcSprintLegalManager;->BRAND_ALPHA_FILE:Ljava/io/File;

    invoke-static {v1}, Lcom/android/settings/framework/io/HtcFileManager;->read(Ljava/io/File;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 243
    .local v0, content:Ljava/lang/StringBuilder;
    if-nez v0, :cond_0

    .line 244
    const/4 v1, 0x0

    .line 246
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/io/HtcFileManager;->readSingleLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getRemoteHomepage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 257
    sget-object v1, Lcom/android/settings/framework/core/about/legal/HtcSprintLegalManager;->HOME_PAGE_FILE:Ljava/io/File;

    invoke-static {v1}, Lcom/android/settings/framework/io/HtcFileManager;->read(Ljava/io/File;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 259
    .local v0, content:Ljava/lang/StringBuilder;
    if-nez v0, :cond_0

    .line 260
    const/4 v1, 0x0

    .line 262
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/io/HtcFileManager;->readSingleLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getRemoteLegalFile(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .parameter "context"

    .prologue
    .line 127
    invoke-static {p0}, Lcom/android/settings/framework/core/about/legal/HtcSprintLegalManager;->isSpanish(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lcom/android/settings/framework/core/about/legal/HtcSprintLegalManager;->ES_US_LEGAL_FILE:Ljava/io/File;

    .line 130
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/settings/framework/core/about/legal/HtcSprintLegalManager;->EN_US_LEGAL_FILE:Ljava/io/File;

    goto :goto_0
.end method

.method private static getRemoteLegalFileContent(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 141
    invoke-static {p0}, Lcom/android/settings/framework/core/about/legal/HtcSprintLegalManager;->getRemoteLegalFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 146
    .local v1, file:Ljava/io/File;
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Lcom/android/settings/framework/io/HtcFileManager;->read(Ljava/io/File;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 148
    .local v0, builder:Ljava/lang/StringBuilder;
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 151
    :goto_0
    return-object v2

    :cond_0
    const-string v2, "Error!"

    goto :goto_0
.end method

.method private static getRemotePrivateAlertForContent(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "brandAlpha"
    .parameter "isCustomizable"

    .prologue
    .line 332
    if-eqz p2, :cond_0

    .line 339
    const v1, 0x7f0c0041

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, format:Ljava/lang/String;
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 344
    .end local v0           #format:Ljava/lang/String;
    :cond_0
    const v1, 0x7f0c0040

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #format:Ljava/lang/String;
    goto :goto_0
.end method

.method private static getRemotePrivateAlertForTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 278
    invoke-static {}, Lcom/android/settings/framework/core/about/legal/HtcSprintLegalManager;->getRemoteBrandAlpha()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, brandAlpha:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/framework/core/about/legal/HtcSprintLegalManager;->getRemoteHomepage()Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, homepage:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/settings/framework/core/about/legal/HtcSprintLegalManager;->isCustomizable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 290
    .local v3, isCustomizable:Z
    if-eqz v3, :cond_0

    .line 297
    const v4, 0x7f0c003f

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, format:Ljava/lang/String;
    :goto_0
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 302
    .end local v1           #format:Ljava/lang/String;
    :cond_0
    const v4, 0x7f0c003e

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #format:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 56
    invoke-static {p0}, Lcom/android/settings/framework/core/about/legal/HtcSprintLegalManager;->getRemotePrivateAlertForTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isCustomizable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "brandAlpha"
    .parameter "homepage"

    .prologue
    const/4 v1, 0x0

    .line 383
    sget-boolean v2, Lcom/android/settings/framework/core/about/legal/HtcSprintLegalManager;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 384
    sget-object v2, Lcom/android/settings/framework/core/about/legal/HtcSprintLegalManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCustomizable("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_0
    if-nez p0, :cond_2

    .line 443
    :cond_1
    :goto_0
    return v1

    .line 401
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 403
    const-string v2, "Chameleon"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 407
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 419
    if-eqz p1, :cond_1

    .line 423
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 425
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "NA"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "N/A"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 434
    :try_start_0
    const-string v2, "//"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_3

    .line 436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 438
    :cond_3
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    const/4 v1, 0x1

    goto :goto_0

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, e:Ljava/net/MalformedURLException;
    sget-object v2, Lcom/android/settings/framework/core/about/legal/HtcSprintLegalManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is not a valid URL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/settings/framework/util/log/HtcLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static isSpanish(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 102
    .local v0, locale:Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "es"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    const/4 v1, 0x1

    .line 105
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final isSprintChameleon()Z
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSprintSeries()Z

    move-result v0

    return v0
.end method
