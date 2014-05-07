.class public Lcom/android/settings/framework/storage/customize/HtcCustomizedScreenTimeout;
.super Ljava/lang/Object;
.source "HtcCustomizedScreenTimeout.java"


# static fields
.field private static final CATGORY_NAME:Ljava/lang/String; = "system"

.field private static final FUNCTION_ENTRIES:Ljava/lang/String; = "screen_timeout"

.field private static final MODULE_NAME:Ljava/lang/String; = "Settings"

.field private static final TAG:Ljava/lang/String; = "HtcCustomizedScreenTimeout"

.field private static mValueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/framework/storage/customize/HtcCustomizedScreenTimeout;->mValueList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEntries(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    sget-object v0, Lcom/android/settings/framework/storage/customize/HtcCustomizedScreenTimeout;->mValueList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 75
    invoke-static {p0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedScreenTimeout;->readCustomizedData(Landroid/content/Context;)V

    .line 77
    :cond_0
    sget-object v0, Lcom/android/settings/framework/storage/customize/HtcCustomizedScreenTimeout;->mValueList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static readCustomizedData(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 86
    const-string v5, "system"

    const-string v6, "Settings"

    invoke-static {p0, v5, v6}, Lcom/android/settings/framework/storage/HtcStorage$Customize;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/framework/storage/customize/HtcCustomizedData;

    move-result-object v0

    .line 90
    .local v0, customizedData:Lcom/android/settings/framework/storage/customize/HtcCustomizedData;
    invoke-virtual {v0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedData;->getCustomizedData()Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_1

    .line 91
    invoke-static {p0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedScreenTimeout;->readDefaultData(Landroid/content/Context;)V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const-string v5, "screen_timeout"

    invoke-virtual {v0, v5}, Lcom/android/settings/framework/storage/customize/HtcCustomizedData;->getBundleWithFunctionName(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 99
    .local v4, screenTimeoutBundle:Landroid/os/Bundle;
    if-nez v4, :cond_2

    .line 100
    invoke-static {p0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedScreenTimeout;->readDefaultData(Landroid/content/Context;)V

    goto :goto_0

    .line 104
    :cond_2
    const-string v5, "plenty_set1"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 108
    .local v1, entriesBundle:Landroid/os/Bundle;
    if-nez v1, :cond_3

    .line 109
    invoke-static {p0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedScreenTimeout;->readDefaultData(Landroid/content/Context;)V

    goto :goto_0

    .line 113
    :cond_3
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_4

    .line 114
    const-string v5, "HtcCustomizedScreenTimeout"

    const-string v6, "Cust_Screen_Timeout:screen_timeout > "

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0x8

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v5, Lcom/android/settings/framework/storage/customize/HtcCustomizedScreenTimeout;->mValueList:Ljava/util/ArrayList;

    .line 118
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v5

    if-ge v3, v5, :cond_6

    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "value"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, entry:Ljava/lang/String;
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_5

    .line 122
    const-string v5, "HtcCustomizedScreenTimeout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_Screen_Timeout > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_5
    :try_start_0
    sget-object v5, Lcom/android/settings/framework/storage/customize/HtcCustomizedScreenTimeout;->mValueList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 134
    .end local v2           #entry:Ljava/lang/String;
    :cond_6
    sget-object v5, Lcom/android/settings/framework/storage/customize/HtcCustomizedScreenTimeout;->mValueList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 135
    invoke-static {p0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedScreenTimeout;->readDefaultData(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 127
    .restart local v2       #entry:Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method private static readDefaultData(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 145
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_0

    .line 146
    const-string v3, "HtcCustomizedScreenTimeout"

    const-string v4, "no SIE data, read default data"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080093

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, values:[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v3, Lcom/android/settings/framework/storage/customize/HtcCustomizedScreenTimeout;->mValueList:Ljava/util/ArrayList;

    .line 154
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 156
    :try_start_0
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 157
    .local v1, value:I
    sget-object v3, Lcom/android/settings/framework/storage/customize/HtcCustomizedScreenTimeout;->mValueList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v1           #value:I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_1
    return-void

    .line 158
    :catch_0
    move-exception v3

    goto :goto_1
.end method
