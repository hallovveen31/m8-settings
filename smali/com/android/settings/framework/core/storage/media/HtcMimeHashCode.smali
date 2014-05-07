.class Lcom/android/settings/framework/core/storage/media/HtcMimeHashCode;
.super Ljava/lang/Object;
.source "HtcMimeHashCode.java"


# instance fields
.field public final mimeHashCode:I

.field public final mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/settings/framework/core/storage/media/HtcMimeHashCode;->mimeType:Ljava/lang/String;

    .line 25
    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/storage/media/HtcMimeHashCode;->getMimeHashCode(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/framework/core/storage/media/HtcMimeHashCode;->mimeHashCode:I

    .line 26
    return-void
.end method

.method private getMimeHashCode(Ljava/lang/String;)I
    .locals 4
    .parameter "mimeType"

    .prologue
    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 35
    .local v0, END_INDEX:I
    const/4 v1, 0x0

    .line 38
    .local v1, hashCode:I
    move v2, v0

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 39
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/2addr v1, v3

    .line 38
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/2addr v1, v3

    .line 46
    shl-int/lit8 v3, v1, 0x5

    or-int v1, v3, v0

    .line 47
    return v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 57
    instance-of v1, p1, Lcom/android/settings/framework/core/storage/media/HtcMimeHashCode;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 58
    check-cast v0, Lcom/android/settings/framework/core/storage/media/HtcMimeHashCode;

    .line 60
    .local v0, type:Lcom/android/settings/framework/core/storage/media/HtcMimeHashCode;
    iget v1, v0, Lcom/android/settings/framework/core/storage/media/HtcMimeHashCode;->mimeHashCode:I

    iget v2, p0, Lcom/android/settings/framework/core/storage/media/HtcMimeHashCode;->mimeHashCode:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/android/settings/framework/core/storage/media/HtcMimeHashCode;->mimeType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/framework/core/storage/media/HtcMimeHashCode;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const/4 v1, 0x1

    .line 65
    .end local v0           #type:Lcom/android/settings/framework/core/storage/media/HtcMimeHashCode;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/android/settings/framework/core/storage/media/HtcMimeHashCode;->mimeHashCode:I

    return v0
.end method
