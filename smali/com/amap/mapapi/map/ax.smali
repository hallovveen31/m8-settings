.class Lcom/amap/mapapi/map/ax;
.super Lcom/amap/mapapi/core/m;
.source "TileServerHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/mapapi/core/m",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/amap/mapapi/map/at$a;",
        ">;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/amap/mapapi/map/at$a;",
        ">;>;"
    }
.end annotation


# instance fields
.field private i:Lcom/amap/mapapi/map/w;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/map/at$a;",
            ">;",
            "Ljava/net/Proxy;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amap/mapapi/core/m;-><init>(Ljava/lang/Object;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/mapapi/map/ax;->i:Lcom/amap/mapapi/map/w;

    .line 44
    return-void
.end method

.method private a(Lcom/amap/mapapi/map/at$a;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 230
    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/ax;->i:Lcom/amap/mapapi/map/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/map/ax;->i:Lcom/amap/mapapi/map/w;

    iget-object v0, v0, Lcom/amap/mapapi/map/w;->o:Lcom/amap/mapapi/core/t;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/amap/mapapi/map/ax;->i:Lcom/amap/mapapi/map/w;

    iget-object v2, v0, Lcom/amap/mapapi/map/w;->o:Lcom/amap/mapapi/core/t;

    .line 244
    invoke-virtual {v2}, Lcom/amap/mapapi/core/t;->size()I

    move-result v3

    .line 246
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    .line 247
    invoke-virtual {v2, v1}, Lcom/amap/mapapi/core/t;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/at$a;

    .line 248
    if-nez v0, :cond_3

    .line 246
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 251
    :cond_3
    invoke-virtual {v0, p1}, Lcom/amap/mapapi/map/at$a;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 253
    iput p2, v0, Lcom/amap/mapapi/map/at$a;->g:I

    goto :goto_0
.end method

.method private a(Landroid/graphics/Bitmap;)[B
    .locals 3
    .parameter

    .prologue
    .line 224
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 225
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 226
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/io/InputStream;Lcom/amap/mapapi/map/at$a;)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v6, -0x1

    .line 172
    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v0, v6

    .line 210
    :cond_1
    :goto_0
    return v0

    .line 175
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    iget v0, p2, Lcom/amap/mapapi/map/at$a;->b:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    const-string v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget v0, p2, Lcom/amap/mapapi/map/at$a;->c:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    const-string v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    iget v0, p2, Lcom/amap/mapapi/map/at$a;->d:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    iget-object v0, p0, Lcom/amap/mapapi/map/ax;->i:Lcom/amap/mapapi/map/w;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/mapapi/map/ax;->i:Lcom/amap/mapapi/map/w;

    iget-object v0, v0, Lcom/amap/mapapi/map/w;->m:Lcom/amap/mapapi/map/h;

    if-nez v0, :cond_4

    :cond_3
    move v0, v6

    .line 183
    goto :goto_0

    .line 185
    :cond_4
    iget-object v0, p0, Lcom/amap/mapapi/map/ax;->i:Lcom/amap/mapapi/map/w;

    iget-object v0, v0, Lcom/amap/mapapi/map/w;->m:Lcom/amap/mapapi/map/h;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-object v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/amap/mapapi/map/h;->a([BLjava/io/InputStream;ZLjava/util/List;Ljava/lang/String;)I

    move-result v0

    .line 195
    if-gez v0, :cond_5

    move v0, v6

    .line 196
    goto :goto_0

    .line 198
    :cond_5
    invoke-direct {p0, p2, v0}, Lcom/amap/mapapi/map/ax;->a(Lcom/amap/mapapi/map/at$a;I)V

    .line 199
    iget-object v1, p0, Lcom/amap/mapapi/map/ax;->i:Lcom/amap/mapapi/map/w;

    if-eqz v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/amap/mapapi/map/ax;->i:Lcom/amap/mapapi/map/w;

    iget-boolean v1, v1, Lcom/amap/mapapi/map/w;->g:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 203
    iget-object v1, p0, Lcom/amap/mapapi/map/ax;->i:Lcom/amap/mapapi/map/w;

    iget-object v1, v1, Lcom/amap/mapapi/map/w;->m:Lcom/amap/mapapi/map/h;

    invoke-virtual {v1, v0}, Lcom/amap/mapapi/map/h;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amap/mapapi/map/ax;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    .line 205
    iget-object v2, p0, Lcom/amap/mapapi/map/ax;->i:Lcom/amap/mapapi/map/w;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amap/mapapi/map/ax;->i:Lcom/amap/mapapi/map/w;

    iget-object v2, v2, Lcom/amap/mapapi/map/w;->n:Lcom/amap/mapapi/map/j;

    if-eqz v2, :cond_1

    .line 206
    iget-object v2, p0, Lcom/amap/mapapi/map/ax;->i:Lcom/amap/mapapi/map/w;

    iget-object v2, v2, Lcom/amap/mapapi/map/w;->n:Lcom/amap/mapapi/map/j;

    iget v3, p2, Lcom/amap/mapapi/map/at$a;->b:I

    iget v4, p2, Lcom/amap/mapapi/map/at$a;->c:I

    iget v5, p2, Lcom/amap/mapapi/map/at$a;->d:I

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/amap/mapapi/map/j;->a([BIII)Z

    goto :goto_0
.end method

.method protected a()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/map/at$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    iget-object v0, p0, Lcom/amap/mapapi/map/ax;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/at$a;

    .line 60
    new-instance v3, Lcom/amap/mapapi/map/at$a;

    invoke-direct {v3, v0}, Lcom/amap/mapapi/map/at$a;-><init>(Lcom/amap/mapapi/map/at$a;)V

    .line 62
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    :cond_0
    return-object v1
.end method

.method protected a(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/map/at$a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/mapapi/core/AMapException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 84
    iget-object v0, p0, Lcom/amap/mapapi/map/ax;->b:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-object v1

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/ax;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 94
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_4

    .line 95
    iget-object v0, p0, Lcom/amap/mapapi/map/ax;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/at$a;

    .line 101
    invoke-virtual {p0, p1, v0}, Lcom/amap/mapapi/map/ax;->a(Ljava/io/InputStream;Lcom/amap/mapapi/map/at$a;)I

    move-result v4

    .line 102
    if-gez v4, :cond_3

    .line 103
    if-nez v1, :cond_2

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    :cond_2
    new-instance v4, Lcom/amap/mapapi/map/at$a;

    invoke-direct {v4, v0}, Lcom/amap/mapapi/map/at$a;-><init>(Lcom/amap/mapapi/map/at$a;)V

    .line 107
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v0, v1

    .line 94
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_1

    .line 111
    :cond_4
    if-eqz p1, :cond_0

    .line 113
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    new-instance v0, Lcom/amap/mapapi/core/AMapException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/amap/mapapi/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/amap/mapapi/map/w;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/amap/mapapi/map/ax;->i:Lcom/amap/mapapi/map/w;

    .line 54
    return-void
.end method

.method protected synthetic b(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/mapapi/core/AMapException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/amap/mapapi/map/ax;->a(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected d()[B
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 154
    iget-object v0, p0, Lcom/amap/mapapi/map/ax;->i:Lcom/amap/mapapi/map/w;

    iget-object v1, v0, Lcom/amap/mapapi/map/w;->j:Lcom/amap/mapapi/map/bb;

    iget-object v0, p0, Lcom/amap/mapapi/map/ax;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/at$a;

    iget v2, v0, Lcom/amap/mapapi/map/at$a;->b:I

    iget-object v0, p0, Lcom/amap/mapapi/map/ax;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/at$a;

    iget v3, v0, Lcom/amap/mapapi/map/at$a;->c:I

    iget-object v0, p0, Lcom/amap/mapapi/map/ax;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/at$a;

    iget v0, v0, Lcom/amap/mapapi/map/at$a;->d:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/amap/mapapi/map/bb;->a(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic h()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/amap/mapapi/map/ax;->a()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
