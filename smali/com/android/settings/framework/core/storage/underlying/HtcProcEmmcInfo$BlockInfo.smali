.class public Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo$BlockInfo;
.super Ljava/lang/Object;
.source "HtcProcEmmcInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockInfo"
.end annotation


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mEraseSize:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mSize:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo$BlockInfo;
    .locals 1

    invoke-static {p0}, Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo$BlockInfo;->parse(Ljava/lang/String;)Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo$BlockInfo;

    move-result-object v0

    return-object v0
.end method

.method private static parse(Ljava/lang/String;)Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo$BlockInfo;
    .locals 6

    new-instance v0, Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo$BlockInfo;

    invoke-direct {v0}, Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo$BlockInfo;-><init>()V

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v3, " "

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo$BlockInfo;->mAddress:Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo$BlockInfo;->mSize:Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo$BlockInfo;->mEraseSize:Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo$BlockInfo;->mName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo$BlockInfo;->mName:Ljava/lang/String;

    const-string v4, "\""

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo$BlockInfo;->mName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getAdress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo$BlockInfo;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getEraseSize()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo$BlockInfo;->mEraseSize:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo$BlockInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo$BlockInfo;->mSize:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalSpace()J
    .locals 6

    const-wide/16 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo$BlockInfo;->mSize:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo$BlockInfo;->mSize:Ljava/lang/String;

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :cond_0
    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo$BlockInfo;->mSize:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{mBlockAdress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo$BlockInfo;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo$BlockInfo;->mSize:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mEraseSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo$BlockInfo;->mEraseSize:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/core/storage/underlying/HtcProcEmmcInfo$BlockInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
