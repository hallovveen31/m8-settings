.class public Lcom/amap/mapapi/core/e;
.super Ljava/lang/Object;
.source "CoreUtil.java"


# static fields
.field public static a:Z

.field static b:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/mapapi/core/e;->a:Z

    .line 192
    const/16 v0, 0x9

    new-array v0, v0, [F

    sput-object v0, Lcom/amap/mapapi/core/e;->b:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)D
    .locals 4
    .parameter

    .prologue
    .line 148
    long-to-double v0, p0

    const-wide v2, 0x412e848000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static a(I)I
    .locals 4
    .parameter

    .prologue
    .line 77
    const-wide/16 v0, 0x45d

    int-to-long v2, p0

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static a()J
    .locals 4

    .prologue
    .line 71
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x3b9aca00

    div-long/2addr v0, v2

    .line 72
    return-wide v0
.end method

.method public static a(D)J
    .locals 2
    .parameter

    .prologue
    .line 143
    const-wide v0, 0x412e848000000000L

    mul-double/2addr v0, p0

    double-to-long v0, v0

    return-wide v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 209
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 211
    const-string v1, "<font color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/net/Proxy;
    .locals 5
    .parameter

    .prologue
    .line 116
    const/4 v1, 0x0

    .line 117
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 119
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 125
    invoke-static {p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-static {p0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v0

    move-object v3, v2

    move v2, v0

    .line 133
    :goto_0
    if-eqz v3, :cond_1

    .line 134
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v3, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 138
    :goto_1
    return-object v0

    .line 129
    :cond_0
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    move-object v3, v2

    move v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Landroid/location/Location;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 269
    const-string v0, "last_know_location"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 271
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 272
    const-string v1, "last_know_lat"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 274
    const-string v1, "last_know_lng"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 276
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 277
    return-void
.end method

.method public static a(DD)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 280
    const/4 v0, 0x1

    .line 281
    const-wide/32 v2, 0xf4240

    invoke-static {v2, v3}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v2

    cmpg-double v2, p0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x3dfd240

    invoke-static {v2, v3}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v2

    cmpl-double v2, p0, v2

    if-lez v2, :cond_1

    :cond_0
    move v0, v1

    .line 285
    :cond_1
    const-wide/32 v2, 0x2faf080

    invoke-static {v2, v3}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v2

    cmpg-double v2, p2, v2

    if-ltz v2, :cond_2

    const-wide/32 v2, 0x8a48640

    invoke-static {v2, v3}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v2

    cmpl-double v2, p2, v2

    if-lez v2, :cond_3

    :cond_2
    move v0, v1

    .line 289
    :cond_3
    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 62
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(I)I
    .locals 4
    .parameter

    .prologue
    .line 81
    int-to-long v0, p0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x1b454

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static b()Landroid/location/Address;
    .locals 2

    .prologue
    .line 162
    new-instance v0, Landroid/location/Address;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 163
    const-string v1, "CN"

    invoke-virtual {v0, v1}, Landroid/location/Address;->setCountryCode(Ljava/lang/String;)V

    .line 164
    const-string v1, "\u4e2d\u56fd"

    invoke-virtual {v0, v1}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    .line 166
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 2
    .parameter

    .prologue
    .line 205
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\n"

    const-string v1, "<br />"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 230
    if-nez p0, :cond_0

    move v0, v1

    .line 247
    :goto_0
    return v0

    .line 233
    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 235
    if-nez v0, :cond_1

    move v0, v1

    .line 236
    goto :goto_0

    .line 238
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 239
    if-nez v0, :cond_2

    move v0, v1

    .line 240
    goto :goto_0

    .line 242
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_3

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v2, :cond_3

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v2, :cond_4

    :cond_3
    move v0, v1

    .line 245
    goto :goto_0

    .line 247
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Landroid/location/Location;
    .locals 6
    .parameter

    .prologue
    .line 255
    const-string v0, "last_know_location"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 257
    const-string v1, ""

    .line 258
    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 259
    const-string v1, "lbs"

    invoke-virtual {v2, v1}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 260
    const-string v1, "last_know_lat"

    const-string v3, "0.0"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 261
    const-string v1, "last_know_lng"

    const-string v5, "0.0"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 262
    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    .line 263
    invoke-virtual {v2, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    .line 264
    return-object v2
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    const-string v0, "<br />"

    return-object v0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 182
    const-string v0, "&nbsp;"

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 187
    const-string v2, "&nbsp;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/mapapi/core/AMapException;
        }
    .end annotation

    .prologue
    .line 294
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 295
    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 297
    const-string v1, "E6008"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 298
    new-instance v0, Lcom/amap/mapapi/core/AMapException;

    const-string v1, "key\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/amap/mapapi/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 310
    :cond_0
    return-void

    .line 300
    :cond_1
    :try_start_1
    const-string v1, "E6012"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 301
    new-instance v0, Lcom/amap/mapapi/core/AMapException;

    const-string v1, "key\u4e0d\u5b58\u5728"

    invoke-direct {v0, v1}, Lcom/amap/mapapi/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_2
    const-string v1, "E6018"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    new-instance v0, Lcom/amap/mapapi/core/AMapException;

    const-string v1, "key\u88ab\u9501\u5b9a"

    invoke-direct {v0, v1}, Lcom/amap/mapapi/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
.end method
