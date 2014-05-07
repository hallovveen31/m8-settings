.class public Lcom/amap/mapapi/offlinemap/e;
.super Ljava/lang/Thread;
.source "SiteFileFetch.java"


# instance fields
.field a:Lcom/amap/mapapi/offlinemap/f;

.field b:[J

.field c:[J

.field d:[Lcom/amap/mapapi/offlinemap/b;

.field e:J

.field f:Z

.field g:Z

.field h:Ljava/io/File;

.field i:Ljava/io/DataOutputStream;

.field j:Lcom/amap/mapapi/offlinemap/c;

.field k:Lcom/amap/mapapi/offlinemap/g;

.field private l:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/offlinemap/f;Lcom/amap/mapapi/offlinemap/c;Lcom/amap/mapapi/offlinemap/g;Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/mapapi/offlinemap/e;->a:Lcom/amap/mapapi/offlinemap/f;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/mapapi/offlinemap/e;->f:Z

    iput-boolean v3, p0, Lcom/amap/mapapi/offlinemap/e;->g:Z

    iput-object p1, p0, Lcom/amap/mapapi/offlinemap/e;->a:Lcom/amap/mapapi/offlinemap/f;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/amap/mapapi/offlinemap/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/mapapi/offlinemap/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".info"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/mapapi/offlinemap/e;->h:Ljava/io/File;

    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/e;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/amap/mapapi/offlinemap/e;->f:Z

    invoke-direct {p0}, Lcom/amap/mapapi/offlinemap/e;->e()V

    :goto_0
    iput-object p2, p0, Lcom/amap/mapapi/offlinemap/e;->j:Lcom/amap/mapapi/offlinemap/c;

    iput-object p3, p0, Lcom/amap/mapapi/offlinemap/e;->k:Lcom/amap/mapapi/offlinemap/g;

    iput-object p4, p0, Lcom/amap/mapapi/offlinemap/e;->l:Landroid/content/Context;

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/amap/mapapi/offlinemap/f;->d()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/amap/mapapi/offlinemap/e;->b:[J

    invoke-virtual {p1}, Lcom/amap/mapapi/offlinemap/f;->d()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/amap/mapapi/offlinemap/e;->c:[J

    goto :goto_0
.end method

.method private a(I)V
    .locals 3

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error Code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/mapapi/core/AMapException;
        }
    .end annotation

    sget v0, Lcom/amap/mapapi/core/a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/amap/mapapi/offlinemap/e;->l:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/mapapi/core/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private d()V
    .locals 9

    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/amap/mapapi/offlinemap/e;->h:Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/amap/mapapi/offlinemap/e;->i:Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/amap/mapapi/offlinemap/e;->i:Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcom/amap/mapapi/offlinemap/e;->b:[J

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v2, v0

    move-wide v0, v3

    :goto_0
    iget-object v5, p0, Lcom/amap/mapapi/offlinemap/e;->b:[J

    array-length v5, v5

    if-ge v2, v5, :cond_1

    if-nez v2, :cond_0

    iget-object v5, p0, Lcom/amap/mapapi/offlinemap/e;->d:[Lcom/amap/mapapi/offlinemap/b;

    aget-object v5, v5, v2

    iget-wide v5, v5, Lcom/amap/mapapi/offlinemap/b;->b:J

    add-long/2addr v0, v5

    :goto_1
    iget-object v5, p0, Lcom/amap/mapapi/offlinemap/e;->i:Ljava/io/DataOutputStream;

    iget-object v6, p0, Lcom/amap/mapapi/offlinemap/e;->d:[Lcom/amap/mapapi/offlinemap/b;

    aget-object v6, v6, v2

    iget-wide v6, v6, Lcom/amap/mapapi/offlinemap/b;->b:J

    invoke-virtual {v5, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v5, p0, Lcom/amap/mapapi/offlinemap/e;->i:Ljava/io/DataOutputStream;

    iget-object v6, p0, Lcom/amap/mapapi/offlinemap/e;->d:[Lcom/amap/mapapi/offlinemap/b;

    aget-object v6, v6, v2

    iget-wide v6, v6, Lcom/amap/mapapi/offlinemap/b;->c:J

    invoke-virtual {v5, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/amap/mapapi/offlinemap/e;->d:[Lcom/amap/mapapi/offlinemap/b;

    aget-object v5, v5, v2

    iget-wide v5, v5, Lcom/amap/mapapi/offlinemap/b;->b:J

    iget-object v7, p0, Lcom/amap/mapapi/offlinemap/e;->d:[Lcom/amap/mapapi/offlinemap/b;

    add-int/lit8 v8, v2, -0x1

    aget-object v7, v7, v8

    iget-wide v7, v7, Lcom/amap/mapapi/offlinemap/b;->c:J

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/amap/mapapi/offlinemap/e;->i:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/FilterOutputStream;->close()V

    iget-wide v5, p0, Lcom/amap/mapapi/offlinemap/e;->e:J

    cmp-long v2, v5, v3

    if-lez v2, :cond_2

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/amap/mapapi/offlinemap/e;->e:J

    div-long/2addr v0, v2

    iget-object v2, p0, Lcom/amap/mapapi/offlinemap/e;->j:Lcom/amap/mapapi/offlinemap/c;

    iget-object v3, p0, Lcom/amap/mapapi/offlinemap/e;->k:Lcom/amap/mapapi/offlinemap/g;

    const/4 v4, 0x0

    long-to-int v0, v0

    invoke-virtual {v2, v3, v4, v0}, Lcom/amap/mapapi/offlinemap/c;->a(Lcom/amap/mapapi/offlinemap/g;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method private e()V
    .locals 5

    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/amap/mapapi/offlinemap/e;->h:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v2, v0, [J

    iput-object v2, p0, Lcom/amap/mapapi/offlinemap/e;->b:[J

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/amap/mapapi/offlinemap/e;->c:[J

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/amap/mapapi/offlinemap/e;->b:[J

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/amap/mapapi/offlinemap/e;->b:[J

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    aput-wide v3, v2, v0

    iget-object v2, p0, Lcom/amap/mapapi/offlinemap/e;->c:[J

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/FilterInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public a()J
    .locals 5

    const/4 v1, -0x1

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/amap/mapapi/offlinemap/e;->a:Lcom/amap/mapapi/offlinemap/f;

    invoke-virtual {v2}, Lcom/amap/mapapi/offlinemap/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0x190

    if-lt v2, v3, :cond_0

    invoke-direct {p0, v2}, Lcom/amap/mapapi/offlinemap/e;->a(I)V

    const-wide/16 v0, -0x2

    :goto_0
    return-wide v0

    :cond_0
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "Content-Length"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_2
    move v1, v0

    :goto_3
    invoke-static {v1}, Lcom/amap/mapapi/offlinemap/h;->b(I)V

    int-to-long v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/mapapi/offlinemap/e;->g:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/amap/mapapi/offlinemap/e;->b:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/amap/mapapi/offlinemap/e;->d:[Lcom/amap/mapapi/offlinemap/b;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/amap/mapapi/offlinemap/b;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public run()V
    .locals 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/e;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/mapapi/core/e;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amap/mapapi/offlinemap/e;->c()V

    :cond_0
    sget v0, Lcom/amap/mapapi/core/a;->a:I

    if-eq v0, v9, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/amap/mapapi/offlinemap/e;->f:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/amap/mapapi/offlinemap/e;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/mapapi/offlinemap/e;->e:J

    iget-wide v0, p0, Lcom/amap/mapapi/offlinemap/e;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const-string v0, "File Length is not known!"

    invoke-static {v0}, Lcom/amap/mapapi/offlinemap/h;->a(Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/e;->b:[J

    array-length v0, v0

    new-array v0, v0, [Lcom/amap/mapapi/offlinemap/b;

    iput-object v0, p0, Lcom/amap/mapapi/offlinemap/e;->d:[Lcom/amap/mapapi/offlinemap/b;

    move v7, v8

    :goto_2
    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/e;->b:[J

    array-length v0, v0

    if-ge v7, v0, :cond_8

    iget-object v10, p0, Lcom/amap/mapapi/offlinemap/e;->d:[Lcom/amap/mapapi/offlinemap/b;

    new-instance v0, Lcom/amap/mapapi/offlinemap/b;

    iget-object v1, p0, Lcom/amap/mapapi/offlinemap/e;->a:Lcom/amap/mapapi/offlinemap/f;

    invoke-virtual {v1}, Lcom/amap/mapapi/offlinemap/f;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amap/mapapi/offlinemap/e;->a:Lcom/amap/mapapi/offlinemap/f;

    invoke-virtual {v3}, Lcom/amap/mapapi/offlinemap/f;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/mapapi/offlinemap/e;->a:Lcom/amap/mapapi/offlinemap/f;

    invoke-virtual {v3}, Lcom/amap/mapapi/offlinemap/f;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/mapapi/offlinemap/e;->b:[J

    aget-wide v3, v3, v7

    iget-object v5, p0, Lcom/amap/mapapi/offlinemap/e;->c:[J

    aget-wide v5, v5, v7

    invoke-direct/range {v0 .. v7}, Lcom/amap/mapapi/offlinemap/b;-><init>(Ljava/lang/String;Ljava/lang/String;JJI)V

    aput-object v0, v10, v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , nStartPos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/mapapi/offlinemap/e;->b:[J

    aget-wide v1, v1, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nEndPos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/mapapi/offlinemap/e;->c:[J

    aget-wide v1, v1, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/mapapi/offlinemap/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/e;->d:[Lcom/amap/mapapi/offlinemap/b;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    iget-wide v0, p0, Lcom/amap/mapapi/offlinemap/e;->e:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const-string v0, "File is not access!"

    invoke-static {v0}, Lcom/amap/mapapi/offlinemap/h;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amap/mapapi/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_5
    move v0, v8

    :goto_3
    :try_start_1
    iget-object v1, p0, Lcom/amap/mapapi/offlinemap/e;->b:[J

    array-length v1, v1

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/amap/mapapi/offlinemap/e;->b:[J

    int-to-long v2, v0

    iget-wide v4, p0, Lcom/amap/mapapi/offlinemap/e;->e:J

    iget-object v6, p0, Lcom/amap/mapapi/offlinemap/e;->b:[J

    array-length v6, v6

    int-to-long v6, v6

    div-long/2addr v4, v6

    mul-long/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    move v0, v8

    :goto_4
    iget-object v1, p0, Lcom/amap/mapapi/offlinemap/e;->c:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_7

    iget-object v1, p0, Lcom/amap/mapapi/offlinemap/e;->c:[J

    iget-object v2, p0, Lcom/amap/mapapi/offlinemap/e;->b:[J

    add-int/lit8 v3, v0, 0x1

    aget-wide v2, v2, v3

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/e;->c:[J

    iget-object v1, p0, Lcom/amap/mapapi/offlinemap/e;->c:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iget-wide v2, p0, Lcom/amap/mapapi/offlinemap/e;->e:J

    aput-wide v2, v0, v1
    :try_end_1
    .catch Lcom/amap/mapapi/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_8
    :try_start_2
    iget-boolean v0, p0, Lcom/amap/mapapi/offlinemap/e;->g:Z

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/amap/mapapi/offlinemap/e;->d()V

    const/16 v0, 0x1f4

    invoke-static {v0}, Lcom/amap/mapapi/offlinemap/h;->a(I)V

    move v0, v8

    :goto_5
    iget-object v1, p0, Lcom/amap/mapapi/offlinemap/e;->b:[J

    array-length v1, v1

    if-ge v0, v1, :cond_b

    iget-object v1, p0, Lcom/amap/mapapi/offlinemap/e;->d:[Lcom/amap/mapapi/offlinemap/b;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/amap/mapapi/offlinemap/b;->e:Z

    if-nez v1, :cond_a

    move v0, v8

    :goto_6
    if-eqz v0, :cond_8

    :cond_9
    iget-boolean v0, p0, Lcom/amap/mapapi/offlinemap/e;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/e;->j:Lcom/amap/mapapi/offlinemap/c;

    iget-object v1, p0, Lcom/amap/mapapi/offlinemap/e;->k:Lcom/amap/mapapi/offlinemap/g;

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/offlinemap/c;->b(Lcom/amap/mapapi/offlinemap/g;)V
    :try_end_2
    .catch Lcom/amap/mapapi/core/AMapException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_b
    move v0, v9

    goto :goto_6
.end method
