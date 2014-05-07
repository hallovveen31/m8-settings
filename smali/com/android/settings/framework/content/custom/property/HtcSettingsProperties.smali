.class public Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;
.super Ljava/lang/Object;
.source "HtcSettingsProperties.java"


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcCustomization;
    value = .enum Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;->CID:Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;
.end annotation


# static fields
.field private static final CATGORY_NAME:Ljava/lang/String; = "Settings"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final DEFAULT_SPLITTER:Ljava/lang/String; = ";|,|\\|"

.field private static final MODULE_NAME:Ljava/lang/String; = "properties"

.field private static final SIE_PREFIX:Ljava/lang/String; = "Cust_Settingsproperties:"

.field private static final TAG:Ljava/lang/String;

.field private static sProperties:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsKey(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->sProperties:Landroid/os/Bundle;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->readCustomData(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->sProperties:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static dump(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->sProperties:Landroid/os/Bundle;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->readCustomData(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->sProperties:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static get(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->sProperties:Landroid/os/Bundle;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->readCustomData(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->sProperties:Landroid/os/Bundle;

    return-object v0
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 3

    sget-object v1, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->sProperties:Landroid/os/Bundle;

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->readCustomData(Landroid/content/Context;)V

    :cond_0
    sget-object v1, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->sProperties:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-nez v0, :cond_2

    :goto_0
    return p2

    :cond_2
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->sProperties:Landroid/os/Bundle;

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->readCustomData(Landroid/content/Context;)V

    :cond_0
    sget-object v1, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->sProperties:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_1

    invoke-static {p1, v0}, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_2

    :goto_0
    return-object v0

    :cond_2
    move-object v0, p2

    goto :goto_0
.end method

.method public static getStringArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->getStringArray(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringArray(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    const-string p3, ";|,|\\|"

    :cond_0
    invoke-virtual {v0, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    :cond_1
    return-object p2
.end method

.method public static getTriState(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    sget-object v2, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->sProperties:Landroid/os/Bundle;

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->readCustomData(Landroid/content/Context;)V

    :cond_0
    sget-object v2, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->sProperties:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    const-string v2, " (type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-nez v1, :cond_3

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Boolean;

    :goto_0
    return-object v2

    :cond_3
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    check-cast v1, Ljava/lang/Boolean;

    move-object v2, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cust_Settingsproperties:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static readCustomData(Landroid/content/Context;)V
    .locals 3

    const-string v1, "Settings"

    const-string v2, "properties"

    invoke-static {p0, v1, v2}, Lcom/android/settings/framework/content/custom/HtcCustomDataReader;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/framework/content/custom/HtcCustomData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/framework/content/custom/HtcCustomData;->get()Landroid/os/Bundle;

    move-result-object v1

    sput-object v1, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->sProperties:Landroid/os/Bundle;

    sget-object v1, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->sProperties:Landroid/os/Bundle;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sput-object v1, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->sProperties:Landroid/os/Bundle;

    :cond_0
    sget-boolean v1, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->TAG:Ljava/lang/String;

    sget-object v2, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->sProperties:Landroid/os/Bundle;

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method
