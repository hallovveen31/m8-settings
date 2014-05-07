.class Lcom/amap/mapapi/map/j;
.super Ljava/lang/Object;
.source "CachManager.java"


# instance fields
.field private a:Lcom/amap/mapapi/map/h;

.field private b:Ljava/lang/String;

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/amap/mapapi/map/w;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/mapapi/map/j;->a:Lcom/amap/mapapi/map/h;

    .line 60
    const-string v0, "/sdcard/Amap/RMap"

    iput-object v0, p0, Lcom/amap/mapapi/map/j;->b:Ljava/lang/String;

    .line 62
    const/16 v0, 0x80

    iput v0, p0, Lcom/amap/mapapi/map/j;->c:I

    .line 18
    if-nez p3, :cond_0

    .line 53
    :goto_0
    return-void

    .line 22
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/map/j;->b:Ljava/lang/String;

    .line 48
    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amap/mapapi/map/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Amap/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p3, Lcom/amap/mapapi/map/w;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/map/j;->b:Ljava/lang/String;

    goto :goto_0

    .line 25
    :cond_2
    const/4 v0, 0x0

    .line 26
    iget-object v1, p3, Lcom/amap/mapapi/map/w;->l:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 28
    new-instance v1, Ljava/io/File;

    iget-object v0, p3, Lcom/amap/mapapi/map/w;->l:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 30
    if-nez v0, :cond_3

    .line 32
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 35
    :cond_3
    if-nez v0, :cond_1

    .line 37
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 39
    if-nez v0, :cond_4

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/map/j;->b:Ljava/lang/String;

    goto :goto_1

    .line 42
    :cond_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/map/j;->b:Ljava/lang/String;

    goto :goto_1
.end method

.method private a(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 132
    rem-int/lit16 v0, p1, 0x80

    .line 133
    rem-int/lit16 v1, p2, 0x80

    .line 134
    mul-int/lit16 v0, v0, 0x80

    add-int/2addr v0, v1

    .line 135
    return v0
.end method

.method private a([B)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 112
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    aget-byte v0, p1, v2

    .line 116
    aget-byte v1, p1, v5

    aput-byte v1, p1, v2

    .line 117
    aput-byte v0, p1, v5

    .line 118
    aget-byte v0, p1, v3

    .line 119
    aget-byte v1, p1, v4

    aput-byte v1, p1, v3

    .line 120
    aput-byte v0, p1, v4

    goto :goto_0
.end method

.method private a(I)[B
    .locals 3
    .parameter

    .prologue
    .line 103
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 104
    const/4 v1, 0x0

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 105
    const/4 v1, 0x1

    const v2, 0xff00

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 106
    const/4 v1, 0x2

    const/high16 v2, 0xff

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 107
    const/4 v1, 0x3

    const/high16 v2, -0x100

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 108
    return-object v0
.end method

.method private a(IIIZ)[Ljava/lang/String;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    div-int/lit16 v0, p1, 0x80

    .line 67
    div-int/lit16 v1, p2, 0x80

    .line 68
    div-int/lit8 v2, v0, 0xa

    .line 69
    div-int/lit8 v3, v1, 0xa

    .line 71
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    iget-object v6, p0, Lcom/amap/mapapi/map/j;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    const-string v2, "/"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    const-string v2, "/"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    if-nez p4, :cond_0

    .line 82
    new-instance v2, Ljava/io/File;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 84
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 87
    :cond_0
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    const-string v2, "_"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    const-string v0, "_"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".idx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 94
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 95
    return-object v4
.end method

.method private b([B)I
    .locals 3
    .parameter

    .prologue
    .line 124
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 125
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 126
    const/4 v1, 0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 127
    const/4 v1, 0x3

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    const/high16 v2, -0x100

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 128
    return v0
.end method


# virtual methods
.method public a(Lcom/amap/mapapi/map/at$a;)I
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v0, -0x1

    .line 139
    iget v1, p1, Lcom/amap/mapapi/map/at$a;->b:I

    iget v4, p1, Lcom/amap/mapapi/map/at$a;->c:I

    iget v5, p1, Lcom/amap/mapapi/map/at$a;->d:I

    invoke-direct {p0, v1, v4, v5, v3}, Lcom/amap/mapapi/map/j;->a(IIIZ)[Ljava/lang/String;

    move-result-object v4

    .line 141
    if-eqz v4, :cond_0

    array-length v1, v4

    const/4 v5, 0x2

    if-ne v1, v5, :cond_0

    aget-object v1, v4, v6

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 261
    :cond_0
    :goto_0
    return v0

    .line 145
    :cond_1
    new-instance v5, Ljava/io/File;

    aget-object v1, v4, v6

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    iget v1, p1, Lcom/amap/mapapi/map/at$a;->b:I

    iget v6, p1, Lcom/amap/mapapi/map/at$a;->c:I

    invoke-direct {p0, v1, v6}, Lcom/amap/mapapi/map/j;->a(II)I

    move-result v6

    .line 150
    if-ltz v6, :cond_0

    .line 155
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v7, "r"

    invoke-direct {v1, v5, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 160
    :goto_1
    if-eqz v1, :cond_0

    .line 164
    mul-int/lit8 v5, v6, 0x4

    int-to-long v5, v5

    :try_start_1
    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 169
    :goto_2
    new-array v5, v8, [B

    .line 171
    const/4 v6, 0x0

    const/4 v7, 0x4

    :try_start_2
    invoke-virtual {v1, v5, v6, v7}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 176
    :goto_3
    invoke-direct {p0, v5}, Lcom/amap/mapapi/map/j;->a([B)V

    .line 177
    invoke-direct {p0, v5}, Lcom/amap/mapapi/map/j;->b([B)I

    move-result v6

    .line 180
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 187
    :goto_4
    if-ltz v6, :cond_0

    .line 191
    new-instance v7, Ljava/io/File;

    aget-object v1, v4, v3

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    :try_start_4
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v1, v7, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5

    move-object v4, v1

    .line 202
    :goto_5
    if-eqz v4, :cond_0

    .line 206
    int-to-long v6, v6

    :try_start_5
    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 212
    :goto_6
    const/4 v1, 0x0

    const/4 v6, 0x4

    :try_start_6
    invoke-virtual {v4, v5, v1, v6}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 217
    :goto_7
    invoke-direct {p0, v5}, Lcom/amap/mapapi/map/j;->a([B)V

    .line 218
    invoke-direct {p0, v5}, Lcom/amap/mapapi/map/j;->b([B)I

    move-result v5

    .line 219
    if-gtz v5, :cond_2

    .line 221
    :try_start_7
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    .line 222
    :catch_0
    move-exception v1

    .line 224
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 156
    :catch_1
    move-exception v1

    .line 158
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v1, v2

    goto :goto_1

    .line 165
    :catch_2
    move-exception v5

    .line 167
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 172
    :catch_3
    move-exception v6

    .line 174
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 181
    :catch_4
    move-exception v1

    .line 183
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 198
    :catch_5
    move-exception v1

    .line 200
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v4, v2

    goto :goto_5

    .line 207
    :catch_6
    move-exception v1

    .line 209
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 213
    :catch_7
    move-exception v1

    .line 215
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 229
    :cond_2
    new-array v1, v5, [B

    .line 231
    const/4 v6, 0x0

    :try_start_8
    invoke-virtual {v4, v1, v6, v5}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    .line 237
    :goto_8
    :try_start_9
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    .line 243
    :goto_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    iget v5, p1, Lcom/amap/mapapi/map/at$a;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget v5, p1, Lcom/amap/mapapi/map/at$a;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    iget v5, p1, Lcom/amap/mapapi/map/at$a;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    iget-object v5, p0, Lcom/amap/mapapi/map/j;->a:Lcom/amap/mapapi/map/h;

    if-eqz v5, :cond_0

    .line 253
    iget-object v0, p0, Lcom/amap/mapapi/map/j;->a:Lcom/amap/mapapi/map/h;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/amap/mapapi/map/h;->a([BLjava/io/InputStream;ZLjava/util/List;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 232
    :catch_8
    move-exception v5

    .line 234
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 238
    :catch_9
    move-exception v4

    .line 240
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9
.end method

.method public a(Lcom/amap/mapapi/map/h;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/amap/mapapi/map/j;->a:Lcom/amap/mapapi/map/h;

    .line 100
    return-void
.end method

.method public declared-synchronized a([BIII)Z
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 266
    monitor-enter p0

    if-nez p1, :cond_1

    .line 411
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 269
    :cond_1
    :try_start_0
    array-length v6, p1

    .line 270
    if-lez v6, :cond_0

    .line 273
    const/4 v2, 0x0

    invoke-direct {p0, p2, p3, p4, v2}, Lcom/amap/mapapi/map/j;->a(IIIZ)[Ljava/lang/String;

    move-result-object v9

    .line 274
    if-eqz v9, :cond_0

    array-length v2, v9

    const/4 v7, 0x2

    if-ne v2, v7, :cond_0

    const/4 v2, 0x0

    aget-object v2, v9, v2

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ""

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 278
    new-instance v7, Ljava/io/File;

    const/4 v2, 0x1

    aget-object v2, v9, v2

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v7}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 282
    :try_start_1
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 287
    :goto_1
    if-eqz v2, :cond_0

    .line 294
    :cond_2
    :try_start_2
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v8, "rws"

    invoke-direct {v2, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 299
    :goto_2
    if-eqz v2, :cond_0

    .line 303
    :try_start_3
    invoke-direct {p0, v6}, Lcom/amap/mapapi/map/j;->a(I)[B

    move-result-object v10

    .line 304
    invoke-direct {p0, v10}, Lcom/amap/mapapi/map/j;->a([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 307
    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-wide v6

    move-wide v7, v6

    .line 313
    :goto_3
    :try_start_5
    invoke-virtual {v2, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 319
    :goto_4
    :try_start_6
    invoke-virtual {v2, v10}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 325
    :goto_5
    :try_start_7
    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 331
    :goto_6
    :try_start_8
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 338
    :goto_7
    :try_start_9
    new-instance v6, Ljava/io/File;

    const/4 v2, 0x0

    aget-object v2, v9, v2

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v6}, Ljava/io/File;->exists()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 342
    :try_start_a
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    move-result v2

    .line 347
    :goto_8
    if-eqz v2, :cond_0

    .line 353
    :cond_3
    :try_start_b
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v9, "rws"

    invoke-direct {v2, v6, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_9

    move-object v6, v2

    .line 358
    :goto_9
    if-eqz v6, :cond_0

    .line 363
    :try_start_c
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    move-result-wide v2

    .line 368
    :goto_a
    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 369
    const/high16 v2, 0x1

    :try_start_d
    new-array v2, v2, [B

    .line 370
    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 372
    :try_start_e
    invoke-virtual {v6, v2}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    .line 379
    :cond_4
    :goto_b
    :try_start_f
    invoke-direct {p0, p2, p3}, Lcom/amap/mapapi/map/j;->a(II)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-result v2

    .line 380
    if-gez v2, :cond_5

    .line 382
    :try_start_10
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0

    goto/16 :goto_0

    .line 383
    :catch_0
    move-exception v1

    .line 385
    :try_start_11
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_0

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 283
    :catch_1
    move-exception v2

    .line 285
    :try_start_12
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move v2, v0

    goto :goto_1

    .line 295
    :catch_2
    move-exception v2

    .line 297
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v2, v3

    goto :goto_2

    .line 308
    :catch_3
    move-exception v6

    .line 310
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    move-wide v7, v4

    goto :goto_3

    .line 314
    :catch_4
    move-exception v6

    .line 316
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 320
    :catch_5
    move-exception v6

    .line 322
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 326
    :catch_6
    move-exception v6

    .line 328
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 332
    :catch_7
    move-exception v2

    .line 334
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 343
    :catch_8
    move-exception v2

    .line 345
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move v2, v0

    goto :goto_8

    .line 354
    :catch_9
    move-exception v2

    .line 356
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v6, v3

    goto :goto_9

    .line 364
    :catch_a
    move-exception v2

    .line 366
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-wide v2, v4

    goto :goto_a

    .line 373
    :catch_b
    move-exception v2

    .line 375
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_b

    .line 390
    :cond_5
    mul-int/lit8 v0, v2, 0x4

    int-to-long v2, v0

    :try_start_13
    invoke-virtual {v6, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c

    .line 395
    :goto_c
    long-to-int v0, v7

    :try_start_14
    invoke-direct {p0, v0}, Lcom/amap/mapapi/map/j;->a(I)[B

    move-result-object v0

    .line 396
    invoke-direct {p0, v0}, Lcom/amap/mapapi/map/j;->a([B)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 398
    :try_start_15
    invoke-virtual {v6, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_d

    .line 404
    :goto_d
    :try_start_16
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_e

    :goto_e
    move v0, v1

    .line 411
    goto/16 :goto_0

    .line 391
    :catch_c
    move-exception v0

    .line 393
    :try_start_17
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 399
    :catch_d
    move-exception v0

    .line 401
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 405
    :catch_e
    move-exception v0

    .line 407
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto :goto_e
.end method
