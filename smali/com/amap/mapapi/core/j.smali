.class public Lcom/amap/mapapi/core/j;
.super Ljava/lang/Object;
.source "MapServerUrl.java"


# static fields
.field private static g:Lcom/amap/mapapi/core/j;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http://webrd01.is.autonavi.com"

    iput-object v0, p0, Lcom/amap/mapapi/core/j;->a:Ljava/lang/String;

    const-string v0, "http://tm.mapabc.com"

    iput-object v0, p0, Lcom/amap/mapapi/core/j;->b:Ljava/lang/String;

    const-string v0, "http://restapi.amap.com"

    iput-object v0, p0, Lcom/amap/mapapi/core/j;->c:Ljava/lang/String;

    const-string v0, "http://ds.mapabc.com:8888"

    iput-object v0, p0, Lcom/amap/mapapi/core/j;->d:Ljava/lang/String;

    const-string v0, "http://mst01.is.autonavi.com"

    iput-object v0, p0, Lcom/amap/mapapi/core/j;->e:Ljava/lang/String;

    const-string v0, "http://tmds.mapabc.com"

    iput-object v0, p0, Lcom/amap/mapapi/core/j;->f:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a()Lcom/amap/mapapi/core/j;
    .locals 2

    const-class v1, Lcom/amap/mapapi/core/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/mapapi/core/j;->g:Lcom/amap/mapapi/core/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/mapapi/core/j;

    invoke-direct {v0}, Lcom/amap/mapapi/core/j;-><init>()V

    sput-object v0, Lcom/amap/mapapi/core/j;->g:Lcom/amap/mapapi/core/j;

    :cond_0
    sget-object v0, Lcom/amap/mapapi/core/j;->g:Lcom/amap/mapapi/core/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/core/j;->e:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x2

    const-string v0, ""

    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    const v2, 0x186a0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    rem-int/lit8 v1, v1, 0x4

    packed-switch v1, :pswitch_data_0

    :goto_0
    iput-object v0, p0, Lcom/amap/mapapi/core/j;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/mapapi/core/j;->a:Ljava/lang/String;

    return-object v0

    :pswitch_0
    sget v0, Lcom/amap/mapapi/core/c;->e:I

    if-ne v0, v4, :cond_0

    const-string v0, "http://wprd01.is.autonavi.com"

    goto :goto_0

    :cond_0
    const-string v0, "http://webrd01.is.autonavi.com"

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/amap/mapapi/core/c;->e:I

    if-ne v0, v4, :cond_1

    const-string v0, "http://wprd02.is.autonavi.com"

    goto :goto_0

    :cond_1
    const-string v0, "http://webrd02.is.autonavi.com"

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/amap/mapapi/core/c;->e:I

    if-ne v0, v4, :cond_2

    const-string v0, "http://wprd03.is.autonavi.com"

    goto :goto_0

    :cond_2
    const-string v0, "http://webrd03.is.autonavi.com"

    goto :goto_0

    :pswitch_3
    sget v0, Lcom/amap/mapapi/core/c;->e:I

    if-ne v0, v4, :cond_3

    const-string v0, "http://wprd04.is.autonavi.com"

    goto :goto_0

    :cond_3
    const-string v0, "http://webrd04.is.autonavi.com"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/core/j;->f:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/core/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/core/j;->a:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/core/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/core/j;->b:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    const v2, 0x186a0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    rem-int/lit8 v1, v1, 0x4

    packed-switch v1, :pswitch_data_0

    :goto_0
    iput-object v0, p0, Lcom/amap/mapapi/core/j;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/mapapi/core/j;->e:Ljava/lang/String;

    return-object v0

    :pswitch_0
    const-string v0, "http://mst01.is.autonavi.com"

    goto :goto_0

    :pswitch_1
    const-string v0, "http://mst02.is.autonavi.com"

    goto :goto_0

    :pswitch_2
    const-string v0, "http://mst03.is.autonavi.com"

    goto :goto_0

    :pswitch_3
    const-string v0, "http://mst04.is.autonavi.com"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/core/j;->c:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/core/j;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/core/j;->d:Ljava/lang/String;

    return-void
.end method
