.class Lcom/amap/mapapi/map/h;
.super Ljava/lang/Object;
.source "BitmapManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/mapapi/map/h$a;
    }
.end annotation


# instance fields
.field protected final a:[Lcom/amap/mapapi/map/h$a;

.field protected final b:I

.field protected final c:I

.field protected final d:[Lcom/amap/mapapi/map/h$a;

.field e:Landroid/graphics/Paint;

.field f:Landroid/graphics/Path;

.field private g:Z

.field private h:J


# direct methods
.method public constructor <init>(IIZJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/mapapi/map/h;->g:Z

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/mapapi/map/h;->h:J

    .line 240
    iput-object v2, p0, Lcom/amap/mapapi/map/h;->e:Landroid/graphics/Paint;

    .line 241
    iput-object v2, p0, Lcom/amap/mapapi/map/h;->f:Landroid/graphics/Path;

    .line 28
    iput p1, p0, Lcom/amap/mapapi/map/h;->b:I

    .line 29
    iput p2, p0, Lcom/amap/mapapi/map/h;->c:I

    .line 31
    iput-boolean p3, p0, Lcom/amap/mapapi/map/h;->g:Z

    .line 32
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p4

    iput-wide v0, p0, Lcom/amap/mapapi/map/h;->h:J

    .line 34
    iget v0, p0, Lcom/amap/mapapi/map/h;->b:I

    if-lez v0, :cond_0

    .line 35
    iget v0, p0, Lcom/amap/mapapi/map/h;->b:I

    new-array v0, v0, [Lcom/amap/mapapi/map/h$a;

    iput-object v0, p0, Lcom/amap/mapapi/map/h;->a:[Lcom/amap/mapapi/map/h$a;

    .line 36
    iget v0, p0, Lcom/amap/mapapi/map/h;->c:I

    new-array v0, v0, [Lcom/amap/mapapi/map/h$a;

    iput-object v0, p0, Lcom/amap/mapapi/map/h;->d:[Lcom/amap/mapapi/map/h$a;

    .line 41
    :goto_0
    return-void

    .line 38
    :cond_0
    iput-object v2, p0, Lcom/amap/mapapi/map/h;->a:[Lcom/amap/mapapi/map/h$a;

    .line 39
    iput-object v2, p0, Lcom/amap/mapapi/map/h;->d:[Lcom/amap/mapapi/map/h$a;

    goto :goto_0
.end method

.method private a(Landroid/graphics/Bitmap;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List",
            "<",
            "Lcom/amap/mapapi/map/ay;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 244
    new-instance v0, Lcom/amap/mapapi/map/h$1;

    invoke-direct {v0, p0, p2}, Lcom/amap/mapapi/map/h$1;-><init>(Lcom/amap/mapapi/map/h;Ljava/util/List;)V

    .line 299
    new-instance v1, Lcom/amap/mapapi/map/f;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/amap/mapapi/map/f;-><init>(Landroid/graphics/Bitmap$Config;)V

    .line 300
    invoke-virtual {v1, p1}, Lcom/amap/mapapi/map/f;->a(Landroid/graphics/Bitmap;)V

    .line 301
    invoke-virtual {v1, v0}, Lcom/amap/mapapi/map/f;->a(Lcom/amap/mapapi/map/g;)V

    .line 303
    return-void
.end method

.method private d()J
    .locals 2

    .prologue
    .line 171
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method protected a()I
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 175
    move v0, v1

    .line 178
    :goto_0
    iget v2, p0, Lcom/amap/mapapi/map/h;->c:I

    if-ge v0, v2, :cond_0

    .line 179
    iget-object v2, p0, Lcom/amap/mapapi/map/h;->d:[Lcom/amap/mapapi/map/h$a;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v4, v1

    .line 182
    :goto_1
    iget v0, p0, Lcom/amap/mapapi/map/h;->b:I

    if-ge v4, v0, :cond_3

    .line 183
    iget-object v0, p0, Lcom/amap/mapapi/map/h;->a:[Lcom/amap/mapapi/map/h$a;

    aget-object v2, v0, v4

    move v3, v1

    .line 185
    :goto_2
    iget v0, p0, Lcom/amap/mapapi/map/h;->c:I

    if-ge v3, v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/amap/mapapi/map/h;->d:[Lcom/amap/mapapi/map/h$a;

    aget-object v0, v0, v3

    if-nez v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/amap/mapapi/map/h;->d:[Lcom/amap/mapapi/map/h$a;

    aput-object v2, v0, v3

    .line 182
    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/amap/mapapi/map/h;->d:[Lcom/amap/mapapi/map/h$a;

    aget-object v0, v0, v3

    iget-wide v5, v0, Lcom/amap/mapapi/map/h$a;->d:J

    iget-wide v7, v2, Lcom/amap/mapapi/map/h$a;->d:J

    cmp-long v0, v5, v7

    if-lez v0, :cond_6

    .line 190
    iget-object v0, p0, Lcom/amap/mapapi/map/h;->d:[Lcom/amap/mapapi/map/h$a;

    aget-object v0, v0, v3

    .line 191
    iget-object v5, p0, Lcom/amap/mapapi/map/h;->d:[Lcom/amap/mapapi/map/h$a;

    aput-object v2, v5, v3

    .line 185
    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v0

    goto :goto_2

    .line 197
    :cond_3
    const/4 v0, -0x1

    move v2, v0

    move v0, v1

    .line 198
    :goto_4
    iget v3, p0, Lcom/amap/mapapi/map/h;->c:I

    if-ge v0, v3, :cond_5

    .line 199
    iget-object v3, p0, Lcom/amap/mapapi/map/h;->d:[Lcom/amap/mapapi/map/h$a;

    aget-object v3, v3, v0

    if-eqz v3, :cond_4

    .line 200
    iget-object v3, p0, Lcom/amap/mapapi/map/h;->d:[Lcom/amap/mapapi/map/h$a;

    aget-object v3, v3, v0

    iput-boolean v1, v3, Lcom/amap/mapapi/map/h$a;->c:Z

    .line 201
    if-gez v2, :cond_4

    .line 202
    iget-object v2, p0, Lcom/amap/mapapi/map/h;->d:[Lcom/amap/mapapi/map/h$a;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/amap/mapapi/map/h$a;->e:I

    .line 198
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 206
    :cond_5
    return v2

    :cond_6
    move-object v0, v2

    goto :goto_3
.end method

.method protected a(Ljava/lang/String;)I
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 44
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v4, :cond_0

    move v0, v2

    .line 71
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 48
    :goto_1
    iget v3, p0, Lcom/amap/mapapi/map/h;->b:I

    if-ge v0, v3, :cond_5

    .line 49
    iget-object v3, p0, Lcom/amap/mapapi/map/h;->a:[Lcom/amap/mapapi/map/h$a;

    aget-object v3, v3, v0

    if-nez v3, :cond_2

    .line 48
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 52
    :cond_2
    iget-object v3, p0, Lcom/amap/mapapi/map/h;->a:[Lcom/amap/mapapi/map/h$a;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/amap/mapapi/map/h$a;->b:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 55
    iget-object v3, p0, Lcom/amap/mapapi/map/h;->a:[Lcom/amap/mapapi/map/h$a;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/amap/mapapi/map/h$a;->c:Z

    if-nez v3, :cond_3

    move v0, v2

    .line 56
    goto :goto_0

    .line 58
    :cond_3
    iget-boolean v3, p0, Lcom/amap/mapapi/map/h;->g:Z

    if-ne v3, v4, :cond_4

    .line 60
    invoke-direct {p0}, Lcom/amap/mapapi/map/h;->d()J

    move-result-wide v3

    .line 61
    iget-object v5, p0, Lcom/amap/mapapi/map/h;->a:[Lcom/amap/mapapi/map/h$a;

    aget-object v5, v5, v0

    iget-wide v5, v5, Lcom/amap/mapapi/map/h$a;->f:J

    sub-long/2addr v3, v5

    iget-wide v5, p0, Lcom/amap/mapapi/map/h;->h:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    .line 63
    iget-object v3, p0, Lcom/amap/mapapi/map/h;->a:[Lcom/amap/mapapi/map/h$a;

    aget-object v0, v3, v0

    iput-boolean v1, v0, Lcom/amap/mapapi/map/h$a;->c:Z

    move v0, v2

    .line 64
    goto :goto_0

    .line 67
    :cond_4
    iget-object v1, p0, Lcom/amap/mapapi/map/h;->a:[Lcom/amap/mapapi/map/h$a;

    aget-object v1, v1, v0

    invoke-direct {p0}, Lcom/amap/mapapi/map/h;->d()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/amap/mapapi/map/h$a;->d:J

    goto :goto_0

    :cond_5
    move v0, v2

    .line 71
    goto :goto_0
.end method

.method protected declared-synchronized a([BLjava/io/InputStream;ZLjava/util/List;Ljava/lang/String;)I
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/io/InputStream;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/amap/mapapi/map/ay;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v0, -0x1

    .line 99
    monitor-enter p0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-nez p4, :cond_1

    .line 163
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 102
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/mapapi/map/h;->b()I

    move-result v1

    .line 103
    if-gez v1, :cond_2

    .line 104
    invoke-virtual {p0}, Lcom/amap/mapapi/map/h;->a()I

    move-result v1

    .line 106
    :cond_2
    if-ltz v1, :cond_0

    .line 109
    iget-object v2, p0, Lcom/amap/mapapi/map/h;->a:[Lcom/amap/mapapi/map/h$a;

    if-eqz v2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/amap/mapapi/map/h;->a:[Lcom/amap/mapapi/map/h$a;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amap/mapapi/map/h;->a:[Lcom/amap/mapapi/map/h$a;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/amap/mapapi/map/h$a;->a:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amap/mapapi/map/h;->a:[Lcom/amap/mapapi/map/h$a;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/amap/mapapi/map/h$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 115
    iget-object v2, p0, Lcom/amap/mapapi/map/h;->a:[Lcom/amap/mapapi/map/h$a;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/amap/mapapi/map/h$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 116
    iget-object v2, p0, Lcom/amap/mapapi/map/h;->a:[Lcom/amap/mapapi/map/h$a;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/amap/mapapi/map/h$a;->a:Landroid/graphics/Bitmap;

    .line 119
    :cond_3
    iget-object v2, p0, Lcom/amap/mapapi/map/h;->a:[Lcom/amap/mapapi/map/h$a;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/amap/mapapi/map/h$a;->g:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 120
    iget-object v2, p0, Lcom/amap/mapapi/map/h;->a:[Lcom/amap/mapapi/map/h$a;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/amap/mapapi/map/h$a;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 121
    iget-object v2, p0, Lcom/amap/mapapi/map/h;->a:[Lcom/amap/mapapi/map/h$a;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/amap/mapapi/map/h$a;->g:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :cond_4
    if-ne p3, v6, :cond_9

    if-eqz p1, :cond_9

    .line 126
    :try_start_1
    iget-object v2, p0, Lcom/amap/mapapi/map/h;->a:[Lcom/amap/mapapi/map/h$a;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    array-length v4, p1

    invoke-static {p1, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lcom/amap/mapapi/map/h$a;->a:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    :cond_5
    :goto_1
    if-eqz p4, :cond_6

    .line 139
    :try_start_2
    iget-object v2, p0, Lcom/amap/mapapi/map/h;->a:[Lcom/amap/mapapi/map/h$a;

    aget-object v2, v2, v1

    const/16 v3, 0x100

    const/16 v4, 0x100

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lcom/amap/mapapi/map/h$a;->a:Landroid/graphics/Bitmap;

    .line 142
    iget-object v2, p0, Lcom/amap/mapapi/map/h;->a:[Lcom/amap/mapapi/map/h$a;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/amap/mapapi/map/h$a;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2, p4}, Lcom/amap/mapapi/map/h;->a(Landroid/graphics/Bitmap;Ljava/util/List;)V

    .line 145
    :cond_6
    iget-object v2, p0, Lcom/amap/mapapi/map/h;->a:[Lcom/amap/mapapi/map/h$a;

    if-eqz v2, :cond_0

    .line 148
    iget-object v2, p0, Lcom/amap/mapapi/map/h;->a:[Lcom/amap/mapapi/map/h$a;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/amap/mapapi/map/h$a;->a:Landroid/graphics/Bitmap;

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/amap/mapapi/map/h;->a:[Lcom/amap/mapapi/map/h$a;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/amap/mapapi/map/h$a;->g:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 153
    :cond_7
    iget-object v0, p0, Lcom/amap/mapapi/map/h;->a:[Lcom/amap/mapapi/map/h$a;

    aget-object v0, v0, v1

    if-eqz v0, :cond_8

    .line 154
    iget-object v0, p0, Lcom/amap/mapapi/map/h;->a:[Lcom/amap/mapapi/map/h$a;

    aget-object v0, v0, v1

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/amap/mapapi/map/h$a;->c:Z

    .line 155
    iget-object v0, p0, Lcom/amap/mapapi/map/h;->a:[Lcom/amap/mapapi/map/h$a;

    aget-object v0, v0, v1

    iput-object p5, v0, Lcom/amap/mapapi/map/h$a;->b:Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/amap/mapapi/map/h;->a:[Lcom/amap/mapapi/map/h$a;

    aget-object v0, v0, v1

    invoke-direct {p0}, Lcom/amap/mapapi/map/h;->d()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/mapapi/map/h$a;->d:J

    .line 158
    iget-boolean v0, p0, Lcom/amap/mapapi/map/h;->g:Z

    if-ne v0, v6, :cond_8

    .line 160
    iget-object v0, p0, Lcom/amap/mapapi/map/h;->a:[Lcom/amap/mapapi/map/h$a;

    aget-object v0, v0, v1

    invoke-direct {p0}, Lcom/amap/mapapi/map/h;->d()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/mapapi/map/h$a;->f:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    move v0, v1

    .line 163
    goto/16 :goto_0

    .line 130
    :cond_9
    if-eqz p2, :cond_5

    .line 132
    :try_start_3
    iget-object v2, p0, Lcom/amap/mapapi/map/h;->a:[Lcom/amap/mapapi/map/h$a;

    aget-object v2, v2, v1

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lcom/amap/mapapi/map/h$a;->a:Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 134
    :catch_0
    move-exception v2

    goto :goto_1

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 128
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method protected a(I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 75
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/amap/mapapi/map/h;->b:I

    if-lt p1, v1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-object v0

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/amap/mapapi/map/h;->a:[Lcom/amap/mapapi/map/h$a;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/amap/mapapi/map/h;->a:[Lcom/amap/mapapi/map/h$a;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/amap/mapapi/map/h$a;->a:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 211
    const/4 v1, -0x1

    .line 213
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/amap/mapapi/map/h;->b:I

    if-ge v0, v2, :cond_2

    .line 214
    iget-object v2, p0, Lcom/amap/mapapi/map/h;->a:[Lcom/amap/mapapi/map/h$a;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    .line 215
    iget-object v1, p0, Lcom/amap/mapapi/map/h;->a:[Lcom/amap/mapapi/map/h$a;

    new-instance v2, Lcom/amap/mapapi/map/h$a;

    invoke-direct {v2, p0}, Lcom/amap/mapapi/map/h$a;-><init>(Lcom/amap/mapapi/map/h;)V

    aput-object v2, v1, v0

    .line 216
    iget-object v1, p0, Lcom/amap/mapapi/map/h;->a:[Lcom/amap/mapapi/map/h$a;

    aget-object v1, v1, v0

    iput v0, v1, Lcom/amap/mapapi/map/h$a;->e:I

    .line 223
    :goto_1
    return v0

    .line 218
    :cond_0
    iget-object v2, p0, Lcom/amap/mapapi/map/h;->a:[Lcom/amap/mapapi/map/h$a;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/amap/mapapi/map/h$a;->c:Z

    if-nez v2, :cond_1

    if-gez v1, :cond_1

    move v1, v0

    .line 213
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 223
    goto :goto_1
.end method

.method protected c()V
    .locals 3

    .prologue
    .line 227
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/amap/mapapi/map/h;->b:I

    if-ge v0, v1, :cond_2

    .line 228
    iget-object v1, p0, Lcom/amap/mapapi/map/h;->a:[Lcom/amap/mapapi/map/h$a;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 227
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/amap/mapapi/map/h;->a:[Lcom/amap/mapapi/map/h$a;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/amap/mapapi/map/h$a;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/mapapi/map/h;->a:[Lcom/amap/mapapi/map/h$a;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/amap/mapapi/map/h$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 233
    iget-object v1, p0, Lcom/amap/mapapi/map/h;->a:[Lcom/amap/mapapi/map/h$a;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/amap/mapapi/map/h$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/amap/mapapi/map/h;->a:[Lcom/amap/mapapi/map/h$a;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/amap/mapapi/map/h$a;->a:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 238
    :cond_2
    return-void
.end method
