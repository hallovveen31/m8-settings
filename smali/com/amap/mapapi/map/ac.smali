.class Lcom/amap/mapapi/map/ac;
.super Ljava/lang/Object;
.source "MapLoader.java"


# instance fields
.field a:Lcom/amap/mapapi/map/MapView;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:Z

.field d:J

.field e:I

.field f:[B

.field g:I

.field h:I

.field i:Z

.field j:Z


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/map/MapView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/ac;->b:Ljava/util/ArrayList;

    .line 13
    iput-boolean v1, p0, Lcom/amap/mapapi/map/ac;->c:Z

    .line 17
    iput v1, p0, Lcom/amap/mapapi/map/ac;->g:I

    .line 18
    iput v1, p0, Lcom/amap/mapapi/map/ac;->h:I

    .line 19
    iput-boolean v1, p0, Lcom/amap/mapapi/map/ac;->i:Z

    .line 20
    iput-boolean v1, p0, Lcom/amap/mapapi/map/ac;->j:Z

    .line 38
    iput-object p1, p0, Lcom/amap/mapapi/map/ac;->a:Lcom/amap/mapapi/map/MapView;

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/mapapi/map/ac;->d:J

    .line 41
    return-void
.end method

.method private d()V
    .locals 7

    .prologue
    const/16 v3, 0x8

    const/4 v6, 0x0

    .line 228
    iget v0, p0, Lcom/amap/mapapi/map/ac;->h:I

    if-nez v0, :cond_1

    .line 230
    iget v0, p0, Lcom/amap/mapapi/map/ac;->g:I

    if-lt v0, v3, :cond_0

    .line 233
    iget-object v0, p0, Lcom/amap/mapapi/map/ac;->f:[B

    invoke-static {v0, v6}, Lcom/amap/mapapi/core/d;->a([BI)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/amap/mapapi/map/ac;->h:I

    .line 234
    invoke-direct {p0}, Lcom/amap/mapapi/map/ac;->d()V

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget v0, p0, Lcom/amap/mapapi/map/ac;->g:I

    iget v1, p0, Lcom/amap/mapapi/map/ac;->h:I

    if-lt v0, v1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/amap/mapapi/map/ac;->f:[B

    invoke-static {v0, v6}, Lcom/amap/mapapi/core/d;->a([BI)I

    move-result v0

    .line 245
    iget-object v1, p0, Lcom/amap/mapapi/map/ac;->f:[B

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/amap/mapapi/core/d;->a([BI)I

    move-result v1

    .line 246
    if-nez v1, :cond_2

    .line 248
    iget-object v1, p0, Lcom/amap/mapapi/map/ac;->f:[B

    invoke-virtual {p0, v1, v3, v0}, Lcom/amap/mapapi/map/ac;->a([BII)V

    .line 274
    :goto_1
    iget-object v0, p0, Lcom/amap/mapapi/map/ac;->f:[B

    iget v1, p0, Lcom/amap/mapapi/map/ac;->h:I

    iget-object v2, p0, Lcom/amap/mapapi/map/ac;->f:[B

    iget v3, p0, Lcom/amap/mapapi/map/ac;->g:I

    iget v4, p0, Lcom/amap/mapapi/map/ac;->h:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v6, v3}, Lcom/amap/mapapi/core/d;->a([BI[BII)V

    .line 278
    iget v0, p0, Lcom/amap/mapapi/map/ac;->g:I

    iget v1, p0, Lcom/amap/mapapi/map/ac;->h:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/amap/mapapi/map/ac;->g:I

    .line 279
    iput v6, p0, Lcom/amap/mapapi/map/ac;->h:I

    .line 280
    invoke-direct {p0}, Lcom/amap/mapapi/map/ac;->d()V

    goto :goto_0

    .line 253
    :cond_2
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/amap/mapapi/map/ac;->f:[B

    const/16 v4, 0x8

    invoke-direct {v2, v3, v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 255
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 257
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 258
    const/16 v3, 0x80

    new-array v3, v3, [B

    .line 260
    :goto_2
    invoke-virtual {v0, v3}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_3

    .line 261
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 267
    :catch_0
    move-exception v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 263
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 265
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/amap/mapapi/map/ac;->a([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 23
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 24
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/amap/mapapi/map/ac;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/amap/mapapi/map/ac;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&cp=1&mesh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 32
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Lcom/amap/mapapi/map/ac;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 150
    const/high16 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/amap/mapapi/map/ac;->f:[B

    .line 151
    iput v1, p0, Lcom/amap/mapapi/map/ac;->h:I

    .line 152
    iput v1, p0, Lcom/amap/mapapi/map/ac;->g:I

    .line 153
    iput-boolean v1, p0, Lcom/amap/mapapi/map/ac;->i:Z

    .line 154
    const-string v0, "\u8fde\u63a5\u6253\u5f00\u6210\u529f..."

    invoke-virtual {p0, v0}, Lcom/amap/mapapi/map/ac;->a(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public a(Lcom/amap/mapapi/map/ac;I[BI)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 182
    iget-object v0, p0, Lcom/amap/mapapi/map/ac;->f:[B

    iget v1, p0, Lcom/amap/mapapi/map/ac;->g:I

    invoke-static {p3, v4, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    iget v0, p0, Lcom/amap/mapapi/map/ac;->g:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/amap/mapapi/map/ac;->g:I

    .line 190
    iget-boolean v0, p0, Lcom/amap/mapapi/map/ac;->i:Z

    if-nez v0, :cond_2

    .line 191
    iget v0, p0, Lcom/amap/mapapi/map/ac;->g:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/amap/mapapi/map/ac;->f:[B

    invoke-static {v0, v4}, Lcom/amap/mapapi/core/d;->a([BI)I

    move-result v0

    .line 199
    if-eqz v0, :cond_1

    .line 201
    iput-boolean v5, p1, Lcom/amap/mapapi/map/ac;->c:Z

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    const/4 v0, 0x4

    .line 207
    iget-object v1, p0, Lcom/amap/mapapi/map/ac;->f:[B

    invoke-static {v1, v0}, Lcom/amap/mapapi/core/d;->a([BI)I

    .line 208
    const/16 v0, 0x8

    .line 212
    iget-object v1, p0, Lcom/amap/mapapi/map/ac;->f:[B

    iget-object v2, p0, Lcom/amap/mapapi/map/ac;->f:[B

    add-int/lit8 v3, p4, -0x8

    invoke-static {v1, v0, v2, v4, v3}, Lcom/amap/mapapi/core/d;->a([BI[BII)V

    .line 214
    iget v0, p0, Lcom/amap/mapapi/map/ac;->g:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/amap/mapapi/map/ac;->g:I

    .line 216
    iput v4, p0, Lcom/amap/mapapi/map/ac;->h:I

    .line 217
    iput-boolean v5, p0, Lcom/amap/mapapi/map/ac;->i:Z

    .line 218
    invoke-direct {p0}, Lcom/amap/mapapi/map/ac;->d()V

    .line 223
    :cond_2
    invoke-direct {p0}, Lcom/amap/mapapi/map/ac;->d()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    return-void
.end method

.method a([BII)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 287
    .line 289
    iget-object v0, p0, Lcom/amap/mapapi/map/ac;->f:[B

    invoke-static {v0, p2}, Lcom/amap/mapapi/core/d;->b([BI)S

    .line 290
    add-int/lit8 v0, p2, 0x2

    .line 292
    iget-object v1, p0, Lcom/amap/mapapi/map/ac;->f:[B

    invoke-static {v1, v0}, Lcom/amap/mapapi/core/d;->b([BI)S

    .line 293
    add-int/lit8 v0, v0, 0x2

    .line 295
    iget-object v1, p0, Lcom/amap/mapapi/map/ac;->f:[B

    invoke-static {v1, v0}, Lcom/amap/mapapi/core/d;->a([BI)I

    .line 296
    add-int/lit8 v0, v0, 0x4

    .line 297
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    .line 298
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, v1, v0}, Ljava/lang/String;-><init>([BII)V

    .line 299
    add-int/2addr v0, v1

    .line 300
    iget-object v0, p0, Lcom/amap/mapapi/map/ac;->a:Lcom/amap/mapapi/map/MapView;

    iget-object v0, v0, Lcom/amap/mapapi/map/MapView;->f:Lcom/mapabc/minimap/map/vmap/NativeMapEngine;

    if-nez v0, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/ac;->a:Lcom/amap/mapapi/map/MapView;

    iget-object v0, v0, Lcom/amap/mapapi/map/MapView;->f:Lcom/mapabc/minimap/map/vmap/NativeMapEngine;

    sub-int v1, p3, p2

    invoke-virtual {v0, p1, p2, v1}, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->putGridData([BII)V

    .line 304
    iget-object v0, p0, Lcom/amap/mapapi/map/ac;->a:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/MapView;->getGridLevelOff(I)I

    move-result v0

    .line 306
    iget-object v1, p0, Lcom/amap/mapapi/map/ac;->a:Lcom/amap/mapapi/map/MapView;

    iget-object v1, v1, Lcom/amap/mapapi/map/MapView;->f:Lcom/mapabc/minimap/map/vmap/NativeMapEngine;

    invoke-virtual {v1, v2, v0}, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->removeBitmapData(Ljava/lang/String;I)V

    .line 308
    iget-object v0, p0, Lcom/amap/mapapi/map/ac;->a:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v0, v2}, Lcom/amap/mapapi/map/MapView;->isGridInScreen(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/amap/mapapi/map/ac;->a:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->postInvalidate()V

    goto :goto_0
.end method

.method public b()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 45
    iput-boolean v6, p0, Lcom/amap/mapapi/map/ac;->j:Z

    .line 47
    invoke-virtual {p0}, Lcom/amap/mapapi/map/ac;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/amap/mapapi/map/ac;->a:Lcom/amap/mapapi/map/MapView;

    iget-object v0, v0, Lcom/amap/mapapi/map/MapView;->i:Lcom/amap/mapapi/map/n;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/n;->a()V

    .line 49
    invoke-virtual {p0, p0}, Lcom/amap/mapapi/map/ac;->b(Lcom/amap/mapapi/map/ac;)V

    .line 130
    :cond_0
    :goto_0
    return-void

    :cond_1
    move v1, v2

    move v3, v2

    .line 55
    :goto_1
    iget-object v0, p0, Lcom/amap/mapapi/map/ac;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 56
    iget-object v0, p0, Lcom/amap/mapapi/map/ac;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 58
    iget-object v5, p0, Lcom/amap/mapapi/map/ac;->a:Lcom/amap/mapapi/map/MapView;

    iget-object v5, v5, Lcom/amap/mapapi/map/MapView;->f:Lcom/mapabc/minimap/map/vmap/NativeMapEngine;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/amap/mapapi/map/ac;->a:Lcom/amap/mapapi/map/MapView;

    iget-object v5, v5, Lcom/amap/mapapi/map/MapView;->f:Lcom/mapabc/minimap/map/vmap/NativeMapEngine;

    invoke-virtual {v5, v0}, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->hasGridData(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    .line 61
    :goto_2
    if-eqz v5, :cond_2

    .line 62
    iget-object v5, p0, Lcom/amap/mapapi/map/ac;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 63
    add-int/lit8 v1, v1, -0x1

    .line 64
    add-int/lit8 v3, v3, 0x1

    .line 65
    iget-object v5, p0, Lcom/amap/mapapi/map/ac;->a:Lcom/amap/mapapi/map/MapView;

    iget-object v5, v5, Lcom/amap/mapapi/map/MapView;->tileDownloadCtrl:Lcom/amap/mapapi/map/av;

    invoke-virtual {v5, v0}, Lcom/amap/mapapi/map/av;->a(Ljava/lang/String;)V

    :cond_2
    move v0, v1

    move v1, v3

    .line 55
    add-int/lit8 v0, v0, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    :cond_3
    move v5, v2

    .line 58
    goto :goto_2

    .line 70
    :cond_4
    iget-object v0, p0, Lcom/amap/mapapi/map/ac;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 71
    invoke-virtual {p0, p0}, Lcom/amap/mapapi/map/ac;->b(Lcom/amap/mapapi/map/ac;)V

    goto :goto_0

    .line 75
    :cond_5
    if-lez v3, :cond_6

    .line 76
    iget-object v0, p0, Lcom/amap/mapapi/map/ac;->a:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->postInvalidate()V

    .line 83
    :cond_6
    const/4 v3, 0x0

    .line 84
    const/4 v0, 0x0

    .line 86
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amap/mapapi/map/ac;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    iget-object v5, p0, Lcom/amap/mapapi/map/ac;->a:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v5, v1}, Lcom/amap/mapapi/map/MapView;->getConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9

    move-result-object v1

    .line 89
    if-nez v1, :cond_9

    .line 111
    invoke-virtual {p0, p0}, Lcom/amap/mapapi/map/ac;->b(Lcom/amap/mapapi/map/ac;)V

    .line 112
    if-eqz v4, :cond_7

    .line 114
    :try_start_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 119
    :cond_7
    :goto_3
    if-eqz v4, :cond_8

    .line 121
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 126
    :cond_8
    :goto_4
    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 92
    :cond_9
    const/16 v0, 0x3a98

    :try_start_3
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 93
    const-string v0, "GET"

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a

    move-result-object v0

    .line 95
    :try_start_4
    invoke-virtual {p0, p0}, Lcom/amap/mapapi/map/ac;->a(Lcom/amap/mapapi/map/ac;)V

    .line 96
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 99
    :goto_5
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-le v6, v7, :cond_b

    .line 100
    invoke-virtual {p0}, Lcom/amap/mapapi/map/ac;->c()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-boolean v7, p0, Lcom/amap/mapapi/map/ac;->c:Z

    if-eqz v7, :cond_e

    .line 101
    :cond_a
    iget-object v2, p0, Lcom/amap/mapapi/map/ac;->a:Lcom/amap/mapapi/map/MapView;

    iget-object v2, v2, Lcom/amap/mapapi/map/MapView;->i:Lcom/amap/mapapi/map/n;

    invoke-virtual {v2}, Lcom/amap/mapapi/map/n;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 111
    :cond_b
    invoke-virtual {p0, p0}, Lcom/amap/mapapi/map/ac;->b(Lcom/amap/mapapi/map/ac;)V

    .line 112
    if-eqz v4, :cond_c

    .line 114
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 119
    :cond_c
    :goto_6
    if-eqz v0, :cond_d

    .line 121
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 126
    :cond_d
    :goto_7
    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 104
    :cond_e
    add-int/2addr v2, v6

    .line 105
    const/4 v7, 0x0

    :try_start_7
    invoke-virtual {p0, p0, v7, v5, v6}, Lcom/amap/mapapi/map/ac;->a(Lcom/amap/mapapi/map/ac;I[BI)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_5

    .line 108
    :catch_0
    move-exception v2

    .line 111
    :goto_8
    invoke-virtual {p0, p0}, Lcom/amap/mapapi/map/ac;->b(Lcom/amap/mapapi/map/ac;)V

    .line 112
    if-eqz v4, :cond_f

    .line 114
    :try_start_8
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 119
    :cond_f
    :goto_9
    if-eqz v0, :cond_10

    .line 121
    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 126
    :cond_10
    :goto_a
    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 111
    :catchall_0
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    :goto_b
    invoke-virtual {p0, p0}, Lcom/amap/mapapi/map/ac;->b(Lcom/amap/mapapi/map/ac;)V

    .line 112
    if-eqz v4, :cond_11

    .line 114
    :try_start_a
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 119
    :cond_11
    :goto_c
    if-eqz v1, :cond_12

    .line 121
    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 126
    :cond_12
    :goto_d
    if-eqz v2, :cond_13

    .line 127
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_13
    throw v0

    .line 115
    :catch_1
    move-exception v2

    goto :goto_3

    .line 122
    :catch_2
    move-exception v0

    goto :goto_4

    .line 115
    :catch_3
    move-exception v2

    goto :goto_6

    .line 122
    :catch_4
    move-exception v0

    goto :goto_7

    .line 115
    :catch_5
    move-exception v2

    goto :goto_9

    .line 122
    :catch_6
    move-exception v0

    goto :goto_a

    .line 115
    :catch_7
    move-exception v3

    goto :goto_c

    .line 122
    :catch_8
    move-exception v1

    goto :goto_d

    .line 111
    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v1, v4

    goto :goto_b

    :catchall_2
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_b

    .line 108
    :catch_9
    move-exception v0

    move-object v0, v4

    move-object v1, v4

    goto :goto_8

    :catch_a
    move-exception v0

    move-object v0, v4

    goto :goto_8
.end method

.method public b(Lcom/amap/mapapi/map/ac;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 163
    iput-object v1, p0, Lcom/amap/mapapi/map/ac;->f:[B

    .line 164
    iput v0, p0, Lcom/amap/mapapi/map/ac;->h:I

    .line 165
    iput v0, p0, Lcom/amap/mapapi/map/ac;->g:I

    .line 166
    invoke-virtual {p0, v1}, Lcom/amap/mapapi/map/ac;->a(Ljava/lang/String;)V

    move v1, v0

    .line 167
    :goto_0
    iget-object v0, p1, Lcom/amap/mapapi/map/ac;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/amap/mapapi/map/ac;->a:Lcom/amap/mapapi/map/MapView;

    iget-object v2, v0, Lcom/amap/mapapi/map/MapView;->tileDownloadCtrl:Lcom/amap/mapapi/map/av;

    iget-object v0, p1, Lcom/amap/mapapi/map/ac;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/amap/mapapi/map/av;->a(Ljava/lang/String;)V

    .line 167
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/ac;->a:Lcom/amap/mapapi/map/MapView;

    iget-object v0, v0, Lcom/amap/mapapi/map/MapView;->i:Lcom/amap/mapapi/map/n;

    iget-object v0, v0, Lcom/amap/mapapi/map/n;->a:Lcom/amap/mapapi/map/al;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/al;->b()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/amap/mapapi/map/ac;->a:Lcom/amap/mapapi/map/MapView;

    iget-object v0, v0, Lcom/amap/mapapi/map/MapView;->i:Lcom/amap/mapapi/map/n;

    iget-object v0, v0, Lcom/amap/mapapi/map/n;->a:Lcom/amap/mapapi/map/al;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/al;->a()Ljava/lang/Object;

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/ac;->a:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->postInvalidate()V

    .line 177
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/amap/mapapi/map/ac;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 133
    iget v0, p0, Lcom/amap/mapapi/map/ac;->e:I

    iget-object v1, p0, Lcom/amap/mapapi/map/ac;->a:Lcom/amap/mapapi/map/MapView;

    iget v1, v1, Lcom/amap/mapapi/map/MapView;->mapLevel:I

    if-eq v0, v1, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 135
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/ac;->a:Lcom/amap/mapapi/map/MapView;

    iget-object v1, p0, Lcom/amap/mapapi/map/ac;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/MapView;->isAGridsInScreen(Ljava/util/ArrayList;)Z

    move-result v0

    goto :goto_0
.end method
