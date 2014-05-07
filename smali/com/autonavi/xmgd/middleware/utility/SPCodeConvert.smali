.class public final Lcom/autonavi/xmgd/middleware/utility/SPCodeConvert;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static WorldToSPCode(II)Ljava/lang/String;
    .locals 10
    .parameter "lon"
    .parameter "lat"

    .prologue
    const/4 v4, 0x1

    const/16 v9, 0x2d

    const/4 v8, 0x6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 184
    const/16 v2, 0x14

    new-array v7, v2, [B

    .line 187
    array-length v3, v7

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_1

    .line 189
    if-ltz p0, :cond_0

    if-gez p1, :cond_2

    .line 251
    :cond_0
    :goto_1
    return-object v0

    .line 187
    :cond_1
    aput-byte v1, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    :cond_2
    const v2, 0xaba9500

    if-gt p0, v2, :cond_0

    move v2, v1

    move v5, v1

    .line 195
    :goto_2
    if-lt v5, v8, :cond_3

    .line 211
    const v3, 0x55d4a80

    if-gt p1, v3, :cond_0

    move v5, v2

    move v6, v1

    .line 214
    :goto_3
    if-lt v6, v8, :cond_5

    move v2, v1

    move v0, v1

    .line 231
    :goto_4
    const/16 v1, 0xa

    if-lt v2, v1, :cond_7

    .line 250
    new-instance v0, Ljava/lang/String;

    invoke-static {v7}, Lcom/autonavi/xmgd/middleware/utility/SPCodeConvert;->b([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 251
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 198
    :cond_3
    add-int/lit8 v3, v5, 0x1

    move v6, v4

    :goto_5
    if-lt v3, v8, :cond_4

    .line 202
    div-int v3, p0, v6

    rem-int/lit8 v3, v3, 0x18

    .line 203
    invoke-static {v3}, Lcom/autonavi/xmgd/middleware/utility/SPCodeConvert;->a(I)B

    move-result v6

    .line 204
    if-eq v6, v9, :cond_0

    .line 208
    add-int/lit8 v3, v2, 0x1

    aput-byte v6, v7, v2

    .line 195
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v2, v3

    goto :goto_2

    .line 200
    :cond_4
    mul-int/lit8 v6, v6, 0x18

    .line 198
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 217
    :cond_5
    add-int/lit8 v2, v6, 0x1

    move v3, v4

    :goto_6
    if-lt v2, v8, :cond_6

    .line 221
    div-int v2, p1, v3

    rem-int/lit8 v2, v2, 0x18

    .line 222
    invoke-static {v2}, Lcom/autonavi/xmgd/middleware/utility/SPCodeConvert;->a(I)B

    move-result v3

    .line 223
    if-eq v3, v9, :cond_0

    .line 227
    add-int/lit8 v2, v5, 0x1

    aput-byte v3, v7, v5

    .line 214
    add-int/lit8 v3, v6, 0x1

    move v5, v2

    move v6, v3

    goto :goto_3

    .line 219
    :cond_6
    mul-int/lit8 v3, v3, 0x18

    .line 217
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 233
    :cond_7
    rem-int/lit8 v1, v2, 0x4

    if-nez v1, :cond_8

    if-eqz v2, :cond_8

    .line 235
    invoke-static {v7}, Lcom/autonavi/xmgd/middleware/utility/SPCodeConvert;->a([B)I

    move-result v1

    .line 236
    :goto_7
    add-int v3, v2, v0

    if-gt v1, v3, :cond_9

    .line 239
    add-int v1, v2, v0

    aput-byte v9, v7, v1

    .line 240
    add-int/lit8 v0, v0, 0x1

    .line 231
    :cond_8
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4

    .line 237
    :cond_9
    add-int/lit8 v3, v1, -0x1

    aget-byte v3, v7, v3

    aput-byte v3, v7, v1

    .line 236
    add-int/lit8 v1, v1, -0x1

    goto :goto_7
.end method

.method private static a(I)B
    .locals 1
    .parameter

    .prologue
    .line 27
    if-ltz p0, :cond_1

    const/16 v0, 0x17

    if-gt p0, v0, :cond_1

    .line 29
    const/16 v0, 0x9

    if-gt p0, v0, :cond_0

    .line 30
    add-int/lit8 v0, p0, 0x30

    int-to-byte v0, v0

    .line 35
    :goto_0
    return v0

    .line 32
    :cond_0
    add-int/lit8 v0, p0, -0xa

    add-int/lit8 v0, v0, 0x61

    int-to-byte v0, v0

    goto :goto_0

    .line 35
    :cond_1
    const/16 v0, 0x2d

    goto :goto_0
.end method

.method private static a([B)I
    .locals 3
    .parameter

    .prologue
    .line 150
    array-length v1, p0

    .line 151
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    move v0, v1

    .line 158
    :cond_0
    return v0

    .line 153
    :cond_1
    aget-byte v2, p0, v0

    if-eqz v2, :cond_0

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static b([B)[B
    .locals 4
    .parameter

    .prologue
    .line 163
    invoke-static {p0}, Lcom/autonavi/xmgd/middleware/utility/SPCodeConvert;->a([B)I

    move-result v1

    .line 164
    new-array v2, v1, [B

    .line 165
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 169
    return-object v2

    .line 167
    :cond_0
    aget-byte v3, p0, v0

    aput-byte v3, v2, v0

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
