.class public Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;
.super Ljava/lang/Object;
.source "HtcCustomizedProperties.java"


# static fields
.field private static final CATGORY_NAME:Ljava/lang/String; = "Settings"

.field private static final MODULE_NAME:Ljava/lang/String; = "properties"

.field private static final TAG:Ljava/lang/String;

.field private static mProperties:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsKey(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "key"

    .prologue
    .line 76
    sget-object v0, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->mProperties:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 77
    invoke-static {p0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->readCustomizedData(Landroid/content/Context;)Z

    .line 79
    :cond_0
    sget-object v0, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->mProperties:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static dump(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 327
    sget-object v3, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->mProperties:Landroid/os/Bundle;

    if-nez v3, :cond_0

    .line 328
    invoke-static {p0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->readCustomizedData(Landroid/content/Context;)Z

    .line 331
    :cond_0
    sget-object v3, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->mProperties:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 334
    .local v0, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    sget-object v3, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->TAG:Ljava/lang/String;

    const-string v4, ">> dump: Cust_Settingsproperties"

    invoke-static {v3, v4}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 336
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 337
    .local v1, key:Ljava/lang/String;
    sget-object v3, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->mProperties:Landroid/os/Bundle;

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, value:Ljava/lang/String;
    sget-object v3, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_Settingsproperties:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 341
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #value:Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->TAG:Ljava/lang/String;

    const-string v4, "<< dump: Cust_Settingsproperties"

    invoke-static {v3, v4}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    return-void
.end method

.method public static get(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 1
    .parameter "context"

    .prologue
    .line 88
    sget-object v0, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->mProperties:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 89
    invoke-static {p0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->readCustomizedData(Landroid/content/Context;)Z

    .line 91
    :cond_0
    sget-object v0, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->mProperties:Landroid/os/Bundle;

    return-object v0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "key"

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 115
    sget-object v1, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->mProperties:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 116
    invoke-static {p0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->readCustomizedData(Landroid/content/Context;)Z

    .line 119
    :cond_0
    sget-object v1, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->mProperties:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    .local v0, value:Ljava/lang/String;
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_1

    .line 122
    const-string v1, "Cust_Settingsproperties"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cust_Settingsproperties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_1
    if-eqz v0, :cond_2

    .end local v0           #value:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #value:Ljava/lang/String;
    :cond_2
    move-object v0, p2

    goto :goto_0
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "key"

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 4
    .parameter "context"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 184
    sget-object v1, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->mProperties:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 185
    invoke-static {p0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->readCustomizedData(Landroid/content/Context;)Z

    .line 188
    :cond_0
    sget-object v1, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->mProperties:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 190
    .local v0, o:Ljava/lang/Object;
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_1

    .line 191
    const-string v1, "Cust_Settingsproperties"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cust_Settingsproperties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_1
    if-nez v0, :cond_2

    .line 200
    .end local v0           #o:Ljava/lang/Object;
    .end local p2
    :goto_0
    return p2

    .line 196
    .restart local v0       #o:Ljava/lang/Object;
    .restart local p2
    :cond_2
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 197
    check-cast v0, Ljava/lang/Boolean;

    .end local v0           #o:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0

    .line 200
    .restart local v0       #o:Ljava/lang/Object;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0
.end method

.method public static getFloat(Landroid/content/Context;Ljava/lang/String;)F
    .locals 1
    .parameter "context"
    .parameter "key"

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->getFloat(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static getFloat(Landroid/content/Context;Ljava/lang/String;F)F
    .locals 6
    .parameter "context"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 273
    sget-object v3, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->mProperties:Landroid/os/Bundle;

    if-nez v3, :cond_0

    .line 274
    invoke-static {p0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->readCustomizedData(Landroid/content/Context;)Z

    .line 277
    :cond_0
    sget-object v3, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->mProperties:Landroid/os/Bundle;

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 279
    .local v1, o:Ljava/lang/Object;
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_1

    .line 280
    const-string v3, "Cust_Settingsproperties"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_Settingsproperties:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_1
    if-nez v1, :cond_2

    .line 296
    .end local v1           #o:Ljava/lang/Object;
    .end local p2
    :goto_0
    return p2

    .line 285
    .restart local v1       #o:Ljava/lang/Object;
    .restart local p2
    :cond_2
    instance-of v3, v1, Ljava/lang/Float;

    if-eqz v3, :cond_3

    .line 286
    check-cast v1, Ljava/lang/Float;

    .end local v1           #o:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_0

    .line 291
    .restart local v1       #o:Ljava/lang/Object;
    :cond_3
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 296
    .local v2, value:Ljava/lang/Float;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_0

    .line 292
    .end local v2           #value:Ljava/lang/Float;
    :catch_0
    move-exception v0

    .line 293
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 294
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .restart local v2       #value:Ljava/lang/Float;
    goto :goto_1
.end method

.method public static getInteger(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .parameter "context"
    .parameter "key"

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->getInteger(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInteger(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 6
    .parameter "context"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 225
    sget-object v3, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->mProperties:Landroid/os/Bundle;

    if-nez v3, :cond_0

    .line 226
    invoke-static {p0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->readCustomizedData(Landroid/content/Context;)Z

    .line 229
    :cond_0
    sget-object v3, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->mProperties:Landroid/os/Bundle;

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 231
    .local v1, o:Ljava/lang/Object;
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_1

    .line 232
    const-string v3, "Cust_Settingsproperties"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_Settingsproperties:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_1
    if-nez v1, :cond_2

    .line 248
    .end local v1           #o:Ljava/lang/Object;
    .end local p2
    :goto_0
    return p2

    .line 237
    .restart local v1       #o:Ljava/lang/Object;
    .restart local p2
    :cond_2
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 238
    check-cast v1, Ljava/lang/Integer;

    .end local v1           #o:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    .line 243
    .restart local v1       #o:Ljava/lang/Object;
    :cond_3
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 248
    .local v2, value:Ljava/lang/Integer;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    .line 244
    .end local v2           #value:Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 245
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 246
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .restart local v2       #value:Ljava/lang/Integer;
    goto :goto_1
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "key"

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 149
    sget-object v1, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->mProperties:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 150
    invoke-static {p0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->readCustomizedData(Landroid/content/Context;)Z

    .line 153
    :cond_0
    sget-object v1, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->mProperties:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    .local v0, value:Ljava/lang/String;
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_1

    .line 156
    const-string v1, "Cust_Settingsproperties"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cust_Settingsproperties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_1
    if-eqz v0, :cond_2

    .end local v0           #value:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #value:Ljava/lang/String;
    :cond_2
    move-object v0, p2

    goto :goto_0
.end method

.method private static readCustomizedData(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 305
    const-string v1, "Settings"

    const-string v2, "properties"

    invoke-static {p0, v1, v2}, Lcom/android/settings/framework/storage/HtcStorage$Customize;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/framework/storage/customize/HtcCustomizedData;

    move-result-object v0

    .line 308
    .local v0, customizedData:Lcom/android/settings/framework/storage/customize/HtcCustomizedData;
    invoke-virtual {v0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedData;->getCustomizedData()Landroid/os/Bundle;

    move-result-object v1

    sput-object v1, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->mProperties:Landroid/os/Bundle;

    .line 311
    sget-object v1, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->mProperties:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 312
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sput-object v1, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->mProperties:Landroid/os/Bundle;

    .line 313
    const/4 v1, 0x0

    .line 319
    :goto_0
    return v1

    .line 316
    :cond_0
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_1

    .line 317
    sget-object v1, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->TAG:Ljava/lang/String;

    sget-object v2, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->mProperties:Landroid/os/Bundle;

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 319
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
