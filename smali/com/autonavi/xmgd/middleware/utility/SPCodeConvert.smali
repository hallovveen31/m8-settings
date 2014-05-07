.class public final Lcom/autonavi/xmgd/middleware/utility/SPCodeConvert;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static WorldToSPCode(II)Ljava/lang/String;
    .locals 10

    const/4 v4, 0x1

    const/16 v9, 0x2d

    const/4 v8, 0x6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x14

    new-array v7, v2, [B

    array-length v3, v7

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_1

    if-ltz p0, :cond_0

    if-gez p1, :cond_2

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    aput-byte v1, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const v2, 0xaba9500

    if-gt p0, v2, :cond_0

    move v2, v1

    move v5, v1

    :goto_2
    if-lt v5, v8, :cond_3

    const v3, 0x55d4a80

    if-gt p1, v3, :cond_0

    move v5, v2

    move v6, v1

    :goto_3
    if-lt v6, v8, :cond_5

    move v2, v1

    move v0, v1

    :goto_4
    const/16 v1, 0xa

    if-lt v2, v1, :cond_7

    new-instance v0, Ljava/lang/String;

    invoke-static {v7}, Lcom/autonavi/xmgd/middleware/utility/SPCodeConvert;->b([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v5, 0x1

    move v6, v4

    :goto_5
    if-lt v3, v8, :cond_4

    div-int v3, p0, v6

    rem-int/lit8 v3, v3, 0x18

    invoke-static {v3}, Lcom/autonavi/xmgd/middleware/utility/SPCodeConvert;->a(I)B

    move-result v6

    if-eq v6, v9, :cond_0

    add-int/lit8 v3, v2, 0x1

    aput-byte v6, v7, v2

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v2, v3

    goto :goto_2

    :cond_4
    mul-int/lit8 v6, v6, 0x18

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v2, v6, 0x1

    move v3, v4

    :goto_6
    if-lt v2, v8, :cond_6

    div-int v2, p1, v3

    rem-int/lit8 v2, v2, 0x18

    invoke-static {v2}, Lcom/autonavi/xmgd/middleware/utility/SPCodeConvert;->a(I)B

    move-result v3

    if-eq v3, v9, :cond_0

    add-int/lit8 v2, v5, 0x1

    aput-byte v3, v7, v5

    add-int/lit8 v3, v6, 0x1

    move v5, v2

    move v6, v3

    goto :goto_3

    :cond_6
    mul-int/lit8 v3, v3, 0x18

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_7
    rem-int/lit8 v1, v2, 0x4

    if-nez v1, :cond_8

    if-eqz v2, :cond_8

    invoke-static {v7}, Lcom/autonavi/xmgd/middleware/utility/SPCodeConvert;->a([B)I

    move-result v1

    :goto_7
    add-int v3, v2, v0

    if-gt v1, v3, :cond_9

    add-int v1, v2, v0

    aput-byte v9, v7, v1

    add-int/lit8 v0, v0, 0x1

    :cond_8
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4

    :cond_9
    add-int/lit8 v3, v1, -0x1

    aget-byte v3, v7, v3

    aput-byte v3, v7, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_7
.end method

.method private static a(I)B
    .locals 1

    if-ltz p0, :cond_1

    const/16 v0, 0x17

    if-gt p0, v0, :cond_1

    const/16 v0, 0x9

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, 0x30

    int-to-byte v0, v0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p0, -0xa

    add-int/lit8 v0, v0, 0x61

    int-to-byte v0, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x2d

    goto :goto_0
.end method

.method private static a([B)I
    .locals 3

    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    move v0, v1

    :cond_0
    return v0

    :cond_1
    aget-byte v2, p0, v0

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static b([B)[B
    .locals 4

    invoke-static {p0}, Lcom/autonavi/xmgd/middleware/utility/SPCodeConvert;->a([B)I

    move-result v1

    new-array v2, v1, [B

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-object v2

    :cond_0
    aget-byte v3, p0, v0

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
