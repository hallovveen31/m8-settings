.class public Lcom/amap/mapapi/location/a;
.super Ljava/lang/Object;
.source "IAPSManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/mapapi/location/a$b;,
        Lcom/amap/mapapi/location/a$a;
    }
.end annotation


# static fields
.field private static b:Lcom/amap/mapapi/location/a;

.field private static f:I

.field private static g:I

.field private static h:I

.field private static r:J


# instance fields
.field private a:Lcom/a/a/a/f;

.field private c:Lcom/amap/mapapi/location/a$a;

.field private volatile d:Z

.field private e:Ljava/lang/Thread;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/location/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/location/Location;

.field private k:Landroid/content/Context;

.field private l:Landroid/location/LocationManager;

.field private m:Z

.field private n:Landroid/location/Location;

.field private o:F

.field private p:J

.field private q:J

.field private s:Landroid/location/LocationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/amap/mapapi/location/a;->b:Lcom/amap/mapapi/location/a;

    .line 27
    const/16 v0, 0x64

    sput v0, Lcom/amap/mapapi/location/a;->f:I

    .line 29
    const/16 v0, 0x66

    sput v0, Lcom/amap/mapapi/location/a;->g:I

    .line 30
    const/16 v0, 0x67

    sput v0, Lcom/amap/mapapi/location/a;->h:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v1, p0, Lcom/amap/mapapi/location/a;->a:Lcom/a/a/a/f;

    .line 24
    iput-object v1, p0, Lcom/amap/mapapi/location/a;->c:Lcom/amap/mapapi/location/a$a;

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/mapapi/location/a;->d:Z

    .line 26
    iput-object v1, p0, Lcom/amap/mapapi/location/a;->e:Ljava/lang/Thread;

    .line 31
    iput-object v1, p0, Lcom/amap/mapapi/location/a;->i:Ljava/util/ArrayList;

    .line 32
    iput-object v1, p0, Lcom/amap/mapapi/location/a;->j:Landroid/location/Location;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/mapapi/location/a;->m:Z

    .line 36
    iput-object v1, p0, Lcom/amap/mapapi/location/a;->n:Landroid/location/Location;

    .line 37
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/amap/mapapi/location/a;->o:F

    .line 38
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/amap/mapapi/location/a;->p:J

    .line 39
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/amap/mapapi/location/a;->q:J

    .line 346
    new-instance v0, Lcom/amap/mapapi/location/b;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/location/b;-><init>(Lcom/amap/mapapi/location/a;)V

    iput-object v0, p0, Lcom/amap/mapapi/location/a;->s:Landroid/location/LocationListener;

    .line 45
    iput-object p1, p0, Lcom/amap/mapapi/location/a;->k:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/amap/mapapi/location/a;->l:Landroid/location/LocationManager;

    .line 47
    new-instance v0, Lcom/amap/mapapi/location/a$a;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/location/a$a;-><init>(Lcom/amap/mapapi/location/a;)V

    iput-object v0, p0, Lcom/amap/mapapi/location/a;->c:Lcom/amap/mapapi/location/a$a;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a/b;->a(Landroid/content/Context;)Lcom/a/a/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/location/a;->a:Lcom/a/a/a/f;

    .line 49
    invoke-static {p1}, Lcom/amap/mapapi/core/b;->a(Landroid/content/Context;)Lcom/amap/mapapi/core/b;

    .line 51
    iget-object v0, p0, Lcom/amap/mapapi/location/a;->a:Lcom/a/a/a/f;

    const-string v1, "yun_droid_mapsdk"

    invoke-interface {v0, v1}, Lcom/a/a/a/f;->b(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/amap/mapapi/location/a;->a:Lcom/a/a/a/f;

    const-string v1, "32M0145A3D7E1266UY6BC6E017AD2387"

    invoke-interface {v0, v1}, Lcom/a/a/a/f;->a(Ljava/lang/String;)V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/location/a;->i:Ljava/util/ArrayList;

    .line 65
    return-void
.end method

.method static synthetic a(J)J
    .locals 0
    .parameter

    .prologue
    .line 21
    sput-wide p0, Lcom/amap/mapapi/location/a;->r:J

    return-wide p0
.end method

.method private a(Landroid/location/Location;)Landroid/location/Location;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 271
    new-instance v0, Lcom/amap/mapapi/core/GeoPoint$b;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/mapapi/core/GeoPoint$b;-><init>(DD)V

    .line 272
    new-instance v1, Lcom/amap/mapapi/core/i;

    invoke-direct {v1, v0, v5, v5, v5}, Lcom/amap/mapapi/core/i;-><init>(Lcom/amap/mapapi/core/GeoPoint$b;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual {v1}, Lcom/amap/mapapi/core/i;->a()Lcom/amap/mapapi/core/GeoPoint$b;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_0

    .line 276
    iget-wide v1, v0, Lcom/amap/mapapi/core/GeoPoint$b;->b:D

    invoke-virtual {p1, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 277
    iget-wide v0, v0, Lcom/amap/mapapi/core/GeoPoint$b;->a:D

    invoke-virtual {p1, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    .line 279
    :cond_0
    return-object p1
.end method

.method private a(Lcom/a/a/a/g;)Landroid/location/Location;
    .locals 4
    .parameter

    .prologue
    .line 283
    new-instance v0, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 285
    const-string v1, "lbs"

    invoke-virtual {v0, v1}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p1}, Lcom/a/a/a/g;->d()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 287
    invoke-virtual {p1}, Lcom/a/a/a/g;->c()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 288
    invoke-virtual {p1}, Lcom/a/a/a/g;->e()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    .line 289
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 290
    const-string v2, "citycode"

    invoke-virtual {p1}, Lcom/a/a/a/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v2, "desc"

    invoke-virtual {p1}, Lcom/a/a/a/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 293
    return-object v0
.end method

.method static synthetic a(Lcom/amap/mapapi/location/a;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/amap/mapapi/location/a;->n:Landroid/location/Location;

    return-object p1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Landroid/location/LocationManager;)Lcom/amap/mapapi/location/a;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 69
    const-class v1, Lcom/amap/mapapi/location/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/mapapi/location/a;->b:Lcom/amap/mapapi/location/a;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/amap/mapapi/location/a;

    invoke-direct {v0, p0, p1}, Lcom/amap/mapapi/location/a;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v0, Lcom/amap/mapapi/location/a;->b:Lcom/amap/mapapi/location/a;

    .line 71
    invoke-static {p0}, Lcom/amap/mapapi/core/b;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 73
    :cond_0
    sget-object v0, Lcom/amap/mapapi/location/a;->b:Lcom/amap/mapapi/location/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/amap/mapapi/location/a;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/amap/mapapi/location/a;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/mapapi/location/a;)Landroid/location/LocationManager;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/amap/mapapi/location/a;->l:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic c()I
    .locals 1

    .prologue
    .line 21
    sget v0, Lcom/amap/mapapi/location/a;->f:I

    return v0
.end method

.method static synthetic c(Lcom/amap/mapapi/location/a;)Landroid/location/LocationListener;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/amap/mapapi/location/a;->s:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic d()I
    .locals 1

    .prologue
    .line 21
    sget v0, Lcom/amap/mapapi/location/a;->g:I

    return v0
.end method

.method static synthetic e()I
    .locals 1

    .prologue
    .line 21
    sget v0, Lcom/amap/mapapi/location/a;->h:I

    return v0
.end method

.method private f()Lcom/a/a/a/g;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 246
    .line 247
    sget v1, Lcom/amap/mapapi/core/a;->a:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 248
    iget-object v1, p0, Lcom/amap/mapapi/location/a;->k:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/mapapi/core/a;->a(Landroid/content/Context;)Z

    move-result v1

    .line 249
    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/amap/mapapi/location/a;->a:Lcom/a/a/a/f;

    invoke-interface {v1, v0}, Lcom/a/a/a/f;->a(Landroid/location/Location;)Lcom/a/a/a/g;

    move-result-object v0

    .line 251
    invoke-direct {p0}, Lcom/amap/mapapi/location/a;->g()V

    .line 259
    :cond_0
    :goto_0
    return-object v0

    .line 254
    :cond_1
    sget v1, Lcom/amap/mapapi/core/a;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 255
    iget-object v1, p0, Lcom/amap/mapapi/location/a;->a:Lcom/a/a/a/f;

    invoke-interface {v1, v0}, Lcom/a/a/a/f;->a(Landroid/location/Location;)Lcom/a/a/a/g;

    move-result-object v0

    .line 256
    invoke-direct {p0}, Lcom/amap/mapapi/location/a;->g()V

    goto :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 263
    sget v0, Lcom/amap/mapapi/core/a;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amap/mapapi/core/a;->c:I

    .line 264
    sget v0, Lcom/amap/mapapi/core/a;->c:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 265
    const/4 v0, -0x1

    sput v0, Lcom/amap/mapapi/core/a;->a:I

    .line 266
    const/4 v0, 0x0

    sput v0, Lcom/amap/mapapi/core/a;->c:I

    .line 268
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/mapapi/location/a;->d:Z

    .line 78
    iget-object v0, p0, Lcom/amap/mapapi/location/a;->e:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/amap/mapapi/location/a;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/location/a;->l:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/amap/mapapi/location/a;->l:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/amap/mapapi/location/a;->s:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/location/a;->c:Lcom/amap/mapapi/location/a$a;

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/amap/mapapi/location/a;->c:Lcom/amap/mapapi/location/a$a;

    sget v1, Lcom/amap/mapapi/location/a;->f:I

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/location/a$a;->removeMessages(I)V

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/amap/mapapi/location/a;->a:Lcom/a/a/a/f;

    if-eqz v0, :cond_3

    .line 94
    iget-object v0, p0, Lcom/amap/mapapi/location/a;->a:Lcom/a/a/a/f;

    invoke-interface {v0}, Lcom/a/a/a/f;->b()V

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/amap/mapapi/location/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 97
    iput-object v2, p0, Lcom/amap/mapapi/location/a;->a:Lcom/a/a/a/f;

    .line 98
    sput-object v2, Lcom/amap/mapapi/location/a;->b:Lcom/amap/mapapi/location/a;

    .line 99
    iput-object v2, p0, Lcom/amap/mapapi/location/a;->j:Landroid/location/Location;

    .line 100
    iput-object v2, p0, Lcom/amap/mapapi/location/a;->c:Lcom/amap/mapapi/location/a$a;

    .line 101
    return-void
.end method

.method public a(JFLandroid/location/LocationListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 105
    new-instance v0, Lcom/amap/mapapi/location/a$b;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amap/mapapi/location/a$b;-><init>(JFLandroid/location/LocationListener;)V

    .line 108
    iget-object v1, p0, Lcom/amap/mapapi/location/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lcom/amap/mapapi/location/a;->l:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/location/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 110
    iget-object v0, p0, Lcom/amap/mapapi/location/a;->l:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-wide v2, p0, Lcom/amap/mapapi/location/a;->p:J

    iget v4, p0, Lcom/amap/mapapi/location/a;->o:F

    iget-object v5, p0, Lcom/amap/mapapi/location/a;->s:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 113
    iput-boolean v6, p0, Lcom/amap/mapapi/location/a;->m:Z

    .line 122
    :cond_0
    return-void
.end method

.method public a(Landroid/location/LocationListener;)V
    .locals 2
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/amap/mapapi/location/a;->c:Lcom/amap/mapapi/location/a$a;

    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/location/a;->c:Lcom/amap/mapapi/location/a$a;

    invoke-virtual {v0}, Lcom/amap/mapapi/location/a$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 129
    sget v1, Lcom/amap/mapapi/location/a;->h:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 130
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 131
    iget-object v1, p0, Lcom/amap/mapapi/location/a;->c:Lcom/amap/mapapi/location/a$a;

    invoke-virtual {v1, v0}, Lcom/amap/mapapi/location/a$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public b()Landroid/location/Location;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/amap/mapapi/location/a;->j:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/amap/mapapi/location/a;->j:Landroid/location/Location;

    .line 138
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/location/a;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/mapapi/core/e;->c(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    goto :goto_0
.end method

.method public run()V
    .locals 14

    .prologue
    const-wide/16 v3, 0x1388

    .line 143
    .line 144
    :goto_0
    iget-boolean v0, p0, Lcom/amap/mapapi/location/a;->d:Z

    if-eqz v0, :cond_e

    .line 145
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/location/a;->e:Ljava/lang/Thread;

    .line 146
    iget-object v0, p0, Lcom/amap/mapapi/location/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 148
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 163
    :cond_0
    iget-object v5, p0, Lcom/amap/mapapi/location/a;->i:Ljava/util/ArrayList;

    monitor-enter v5

    .line 165
    :try_start_1
    iget-object v0, p0, Lcom/amap/mapapi/location/a;->i:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amap/mapapi/location/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/location/a$b;

    .line 167
    invoke-static {}, Lcom/amap/mapapi/core/e;->a()J

    move-result-wide v6

    .line 168
    iget v1, p0, Lcom/amap/mapapi/location/a;->o:F

    iget v2, v0, Lcom/amap/mapapi/location/a$b;->b:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget v1, v0, Lcom/amap/mapapi/location/a$b;->b:F

    :goto_1
    iput v1, p0, Lcom/amap/mapapi/location/a;->o:F

    .line 170
    iget-wide v1, p0, Lcom/amap/mapapi/location/a;->p:J

    iget-wide v8, v0, Lcom/amap/mapapi/location/a$b;->a:J

    cmp-long v1, v1, v8

    if-lez v1, :cond_3

    iget-wide v1, v0, Lcom/amap/mapapi/location/a$b;->a:J

    :goto_2
    iput-wide v1, p0, Lcom/amap/mapapi/location/a;->p:J

    .line 172
    if-eqz v0, :cond_d

    .line 174
    iget-wide v1, v0, Lcom/amap/mapapi/location/a$b;->a:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_4

    move-wide v1, v3

    :goto_3
    iput-wide v1, p0, Lcom/amap/mapapi/location/a;->q:J

    .line 179
    iget-wide v1, v0, Lcom/amap/mapapi/location/a$b;->d:J

    sub-long v1, v6, v1

    iget-wide v8, v0, Lcom/amap/mapapi/location/a$b;->a:J

    cmp-long v1, v1, v8

    if-ltz v1, :cond_1

    .line 180
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/mapapi/location/a$b;->e:Z

    .line 182
    :cond_1
    iget-boolean v1, v0, Lcom/amap/mapapi/location/a$b;->e:Z

    if-eqz v1, :cond_d

    .line 183
    iget-object v1, p0, Lcom/amap/mapapi/location/a;->c:Lcom/amap/mapapi/location/a$a;

    if-nez v1, :cond_5

    .line 184
    monitor-exit v5

    goto :goto_0

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 168
    :cond_2
    :try_start_2
    iget v1, p0, Lcom/amap/mapapi/location/a;->o:F

    goto :goto_1

    .line 170
    :cond_3
    iget-wide v1, p0, Lcom/amap/mapapi/location/a;->p:J

    goto :goto_2

    .line 174
    :cond_4
    iget-wide v1, v0, Lcom/amap/mapapi/location/a$b;->a:J

    goto :goto_3

    .line 186
    :cond_5
    iget-object v1, p0, Lcom/amap/mapapi/location/a;->c:Lcom/amap/mapapi/location/a$a;

    invoke-virtual {v1}, Lcom/amap/mapapi/location/a$a;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 187
    const/4 v1, 0x0

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget-wide v10, Lcom/amap/mapapi/location/a;->r:J

    sub-long/2addr v8, v10

    iget-wide v10, p0, Lcom/amap/mapapi/location/a;->p:J

    const-wide/16 v12, 0xa

    mul-long/2addr v10, v12

    cmp-long v8, v8, v10

    if-lez v8, :cond_9

    .line 189
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/amap/mapapi/location/a;->m:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 195
    :goto_4
    :try_start_3
    iget-object v8, p0, Lcom/amap/mapapi/location/a;->n:Landroid/location/Location;

    if-eqz v8, :cond_6

    iget-boolean v8, p0, Lcom/amap/mapapi/location/a;->m:Z

    if-nez v8, :cond_7

    .line 196
    :cond_6
    invoke-direct {p0}, Lcom/amap/mapapi/location/a;->f()Lcom/a/a/a/g;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    .line 203
    :cond_7
    :goto_5
    if-nez v1, :cond_8

    :try_start_4
    iget-object v8, p0, Lcom/amap/mapapi/location/a;->n:Landroid/location/Location;

    if-eqz v8, :cond_d

    iget-boolean v8, p0, Lcom/amap/mapapi/location/a;->m:Z

    if-eqz v8, :cond_d

    .line 205
    :cond_8
    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/amap/mapapi/location/a$b;->e:Z

    .line 206
    iput-wide v6, v0, Lcom/amap/mapapi/location/a$b;->d:J

    .line 208
    if-eqz v1, :cond_a

    .line 209
    invoke-direct {p0, v1}, Lcom/amap/mapapi/location/a;->a(Lcom/a/a/a/g;)Landroid/location/Location;

    move-result-object v1

    .line 210
    invoke-virtual {v1, v6, v7}, Landroid/location/Location;->setTime(J)V

    .line 223
    :goto_6
    iget-object v6, p0, Lcom/amap/mapapi/location/a;->j:Landroid/location/Location;

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 224
    iput-object v1, p0, Lcom/amap/mapapi/location/a;->j:Landroid/location/Location;

    iput-object v1, v0, Lcom/amap/mapapi/location/a$b;->f:Landroid/location/Location;

    .line 225
    sget v6, Lcom/amap/mapapi/location/a;->f:I

    iput v6, v2, Landroid/os/Message;->what:I

    .line 226
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 227
    iget-object v0, p0, Lcom/amap/mapapi/location/a;->c:Lcom/amap/mapapi/location/a$a;

    if-nez v0, :cond_c

    .line 228
    monitor-exit v5

    goto/16 :goto_0

    .line 191
    :cond_9
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/amap/mapapi/location/a;->m:Z

    goto :goto_4

    .line 198
    :catch_1
    move-exception v8

    .line 199
    if-eqz v0, :cond_7

    .line 200
    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/amap/mapapi/location/a$b;->e:Z

    goto :goto_5

    .line 213
    :cond_a
    iget-object v1, p0, Lcom/amap/mapapi/location/a;->n:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    iget-object v1, p0, Lcom/amap/mapapi/location/a;->n:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lcom/amap/mapapi/core/e;->a(DD)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 216
    iget-object v1, p0, Lcom/amap/mapapi/location/a;->n:Landroid/location/Location;

    invoke-direct {p0, v1}, Lcom/amap/mapapi/location/a;->a(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v1

    goto :goto_6

    .line 219
    :cond_b
    iget-object v1, p0, Lcom/amap/mapapi/location/a;->n:Landroid/location/Location;

    goto :goto_6

    .line 230
    :cond_c
    iget-object v0, p0, Lcom/amap/mapapi/location/a;->c:Lcom/amap/mapapi/location/a$a;

    invoke-virtual {v0, v2}, Lcom/amap/mapapi/location/a$a;->sendMessage(Landroid/os/Message;)Z

    .line 231
    iget-object v0, p0, Lcom/amap/mapapi/location/a;->k:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/amap/mapapi/core/e;->a(Landroid/content/Context;Landroid/location/Location;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 237
    :cond_d
    :try_start_5
    iget-wide v0, p0, Lcom/amap/mapapi/location/a;->q:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 241
    :goto_7
    :try_start_6
    monitor-exit v5

    goto/16 :goto_0

    .line 238
    :catch_2
    move-exception v0

    .line 239
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_7

    .line 243
    :cond_e
    return-void
.end method
