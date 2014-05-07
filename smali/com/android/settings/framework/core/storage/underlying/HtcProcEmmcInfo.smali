.class public Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo;
.super Ljava/lang/Object;
.source "HtcProcEmmcInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo$BlockInfo;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final FILE_PATH:Ljava/lang/String; = "/proc/emmc"

.field private static final TAG:Ljava/lang/String;

.field private static sBlockInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo$BlockInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Settings:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo;->TAG:Ljava/lang/String;

    .line 52
    sget-boolean v4, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v4, Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo;->DEBUG:Z

    .line 173
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo;->sBlockInfoMap:Ljava/util/HashMap;

    .line 177
    const-string v4, "/proc/emmc"

    invoke-static {v4}, Lcom/android/settings/framework/io/HtcFileManager;->read(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, content:Ljava/lang/String;
    sget-boolean v4, Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 180
    invoke-static {v1}, Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo;->log(Ljava/lang/String;)V

    .line 183
    :cond_0
    if-eqz v1, :cond_2

    .line 184
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, lines:[Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 189
    aget-object v4, v3, v2

    #calls: Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo$BlockInfo;->parse(Ljava/lang/String;)Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo$BlockInfo;
    invoke-static {v4}, Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo$BlockInfo;->access$100(Ljava/lang/String;)Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo$BlockInfo;

    move-result-object v0

    .line 190
    .local v0, block:Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo$BlockInfo;
    sget-object v4, Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo;->sBlockInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo$BlockInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-boolean v4, Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 193
    invoke-virtual {v0}, Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo$BlockInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo;->log(Ljava/lang/String;)V

    .line 188
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    .end local v0           #block:Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo$BlockInfo;
    .end local v2           #i:I
    .end local v3           #lines:[Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getBlockInfo(Ljava/lang/String;)Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo$BlockInfo;
    .locals 2
    .parameter "blockName"

    .prologue
    .line 217
    if-nez p0, :cond_0

    .line 218
    const/4 v0, 0x0

    .line 220
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo;->sBlockInfoMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo$BlockInfo;

    goto :goto_0
.end method

.method public static getBlockInfoList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo$BlockInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo;->sBlockInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static isEmmcInfoExist()Z
    .locals 2

    .prologue
    .line 204
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/emmc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 232
    sget-object v0, Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void
.end method
