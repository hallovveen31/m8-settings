.class public Lcom/amap/mapapi/location/LocationManagerProxy;
.super Ljava/lang/Object;
.source "LocationManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/mapapi/location/LocationManagerProxy$a;,
        Lcom/amap/mapapi/location/LocationManagerProxy$b;
    }
.end annotation


# static fields
.field public static final GPS_PROVIDER:Ljava/lang/String; = "gps"

.field public static final KEY_LOCATION_CHANGED:Ljava/lang/String; = "location"

.field public static final KEY_PROVIDER_ENABLED:Ljava/lang/String; = "providerEnabled"

.field public static final KEY_PROXIMITY_ENTERING:Ljava/lang/String; = "entering"

.field public static final KEY_STATUS_CHANGED:Ljava/lang/String; = "status"

.field public static final NETWORK_PROVIDER:Ljava/lang/String; = "network"

.field private static b:Lcom/amap/mapapi/location/LocationManagerProxy;


# instance fields
.field private a:Landroid/location/LocationManager;

.field private c:Lcom/amap/mapapi/location/a;

.field private d:Landroid/content/Context;

.field private e:Lcom/amap/mapapi/location/c;

.field private f:Lcom/amap/mapapi/location/LocationManagerProxy$b;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/amap/mapapi/location/LocationProviderProxy;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:D

.field private k:D

.field private l:Z

.field private m:J

.field private n:D

.field private o:Lcom/amap/mapapi/location/c;

.field private p:Lcom/amap/mapapi/location/LocationManagerProxy$a;

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/amap/mapapi/location/LocationManagerProxy;->b:Lcom/amap/mapapi/location/LocationManagerProxy;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->c:Lcom/amap/mapapi/location/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->h:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->l:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->m:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->n:D

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->q:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/amap/mapapi/core/b;->a(Landroid/content/Context;)Lcom/amap/mapapi/core/b;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/mapapi/location/LocationManagerProxy;->a(Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->c:Lcom/amap/mapapi/location/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->h:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->l:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->m:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->n:D

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->q:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/amap/mapapi/location/LocationManagerProxy;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/mapapi/location/LocationManagerProxy;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->d:Landroid/content/Context;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-static {v0, v1}, Lcom/amap/mapapi/location/a;->a(Landroid/content/Context;Landroid/location/LocationManager;)Lcom/amap/mapapi/location/a;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->c:Lcom/amap/mapapi/location/a;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->c:Lcom/amap/mapapi/location/a;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic b(Lcom/amap/mapapi/location/LocationManagerProxy;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/amap/mapapi/location/LocationManagerProxy;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->l:Z

    return v0
.end method

.method static synthetic d(Lcom/amap/mapapi/location/LocationManagerProxy;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->q:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/amap/mapapi/location/LocationManagerProxy;)D
    .locals 2

    iget-wide v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->j:D

    return-wide v0
.end method

.method static synthetic f(Lcom/amap/mapapi/location/LocationManagerProxy;)D
    .locals 2

    iget-wide v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->k:D

    return-wide v0
.end method

.method static synthetic g(Lcom/amap/mapapi/location/LocationManagerProxy;)J
    .locals 2

    iget-wide v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->m:J

    return-wide v0
.end method

.method public static declared-synchronized getInstance(Landroid/app/Activity;)Lcom/amap/mapapi/location/LocationManagerProxy;
    .locals 2

    const-class v1, Lcom/amap/mapapi/location/LocationManagerProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/mapapi/location/LocationManagerProxy;->b:Lcom/amap/mapapi/location/LocationManagerProxy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/mapapi/location/LocationManagerProxy;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/location/LocationManagerProxy;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/amap/mapapi/location/LocationManagerProxy;->b:Lcom/amap/mapapi/location/LocationManagerProxy;

    :goto_0
    sget-object v0, Lcom/amap/mapapi/location/LocationManagerProxy;->b:Lcom/amap/mapapi/location/LocationManagerProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/amap/mapapi/location/LocationManagerProxy;->b:Lcom/amap/mapapi/location/LocationManagerProxy;

    invoke-virtual {v0}, Lcom/amap/mapapi/location/LocationManagerProxy;->destory()V

    new-instance v0, Lcom/amap/mapapi/location/LocationManagerProxy;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/location/LocationManagerProxy;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/amap/mapapi/location/LocationManagerProxy;->b:Lcom/amap/mapapi/location/LocationManagerProxy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/amap/mapapi/location/LocationManagerProxy;
    .locals 2

    const-class v1, Lcom/amap/mapapi/location/LocationManagerProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/mapapi/location/LocationManagerProxy;->b:Lcom/amap/mapapi/location/LocationManagerProxy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/mapapi/location/LocationManagerProxy;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/location/LocationManagerProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amap/mapapi/location/LocationManagerProxy;->b:Lcom/amap/mapapi/location/LocationManagerProxy;

    :goto_0
    sget-object v0, Lcom/amap/mapapi/location/LocationManagerProxy;->b:Lcom/amap/mapapi/location/LocationManagerProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/amap/mapapi/location/LocationManagerProxy;->b:Lcom/amap/mapapi/location/LocationManagerProxy;

    invoke-virtual {v0}, Lcom/amap/mapapi/location/LocationManagerProxy;->destory()V

    new-instance v0, Lcom/amap/mapapi/location/LocationManagerProxy;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/location/LocationManagerProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amap/mapapi/location/LocationManagerProxy;->b:Lcom/amap/mapapi/location/LocationManagerProxy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic h(Lcom/amap/mapapi/location/LocationManagerProxy;)D
    .locals 2

    iget-wide v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->n:D

    return-wide v0
.end method


# virtual methods
.method public addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addProximityAlert(DDFJLandroid/app/PendingIntent;)V
    .locals 10

    const-string v1, "lbs"

    iget-object v2, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->o:Lcom/amap/mapapi/location/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/amap/mapapi/location/c;

    invoke-direct {v1, p0}, Lcom/amap/mapapi/location/c;-><init>(Lcom/amap/mapapi/location/LocationManagerProxy;)V

    iput-object v1, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->o:Lcom/amap/mapapi/location/c;

    :cond_0
    iget-object v1, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->p:Lcom/amap/mapapi/location/LocationManagerProxy$a;

    if-nez v1, :cond_1

    new-instance v1, Lcom/amap/mapapi/location/LocationManagerProxy$a;

    invoke-direct {v1, p0}, Lcom/amap/mapapi/location/LocationManagerProxy$a;-><init>(Lcom/amap/mapapi/location/LocationManagerProxy;)V

    iput-object v1, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->p:Lcom/amap/mapapi/location/LocationManagerProxy$a;

    :cond_1
    iget-object v1, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->o:Lcom/amap/mapapi/location/c;

    iget-object v2, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->p:Lcom/amap/mapapi/location/LocationManagerProxy$a;

    const-wide/16 v3, 0x2710

    iget-object v6, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->i:Ljava/lang/String;

    move v5, p5

    invoke-virtual/range {v1 .. v6}, Lcom/amap/mapapi/location/c;->a(Landroid/location/LocationListener;JFLjava/lang/String;)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->l:Z

    iput-wide p1, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->j:D

    iput-wide p3, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->k:D

    float-to-double v1, p5

    iput-wide v1, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->n:D

    const-wide/16 v1, -0x1

    cmp-long v1, p6, v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/amap/mapapi/core/e;->a()J

    move-result-wide v1

    add-long v1, v1, p6

    iput-wide v1, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->m:J

    :cond_2
    iget-object v1, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->q:Ljava/util/ArrayList;

    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v1, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/location/LocationManager;->addProximityAlert(DDFJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public addTestProvider(Ljava/lang/String;ZZZZZZZII)V
    .locals 11

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Landroid/location/LocationManager;->addTestProvider(Ljava/lang/String;ZZZZZZZII)V

    :cond_0
    return-void
.end method

.method public clearTestProviderEnabled(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->clearTestProviderEnabled(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public clearTestProviderLocation(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->clearTestProviderLocation(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public clearTestProviderStatus(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->clearTestProviderStatus(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public destory()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->c:Lcom/amap/mapapi/location/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->c:Lcom/amap/mapapi/location/a;

    invoke-virtual {v0}, Lcom/amap/mapapi/location/a;->a()V

    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->h:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->h:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_3
    iput-object v1, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->h:Ljava/util/Hashtable;

    iput-object v1, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->g:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->q:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->c:Lcom/amap/mapapi/location/a;

    sput-object v1, Lcom/amap/mapapi/location/LocationManagerProxy;->b:Lcom/amap/mapapi/location/LocationManagerProxy;

    return-void
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "lbs"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "lbs"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "lbs"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v1}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .locals 2

    const-string v0, "lbs"

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "lbs"

    invoke-virtual {p0, v1}, Lcom/amap/mapapi/location/LocationManagerProxy;->getProvider(Ljava/lang/String;)Lcom/amap/mapapi/location/LocationProviderProxy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/amap/mapapi/location/LocationProviderProxy;->meetsCriteria(Landroid/location/Criteria;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1, p2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/mapapi/core/e;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1, p2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    .locals 1

    const-string v0, "lbs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->c:Lcom/amap/mapapi/location/a;

    invoke-virtual {v0}, Lcom/amap/mapapi/location/a;->b()Landroid/location/Location;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProvider(Ljava/lang/String;)Lcom/amap/mapapi/location/LocationProviderProxy;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->h:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->h:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/location/LocationProviderProxy;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-static {v0, p1}, Lcom/amap/mapapi/location/LocationProviderProxy;->a(Landroid/location/LocationManager;Ljava/lang/String;)Lcom/amap/mapapi/location/LocationProviderProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->h:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1, p2}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0

    const-string v1, "lbs"

    invoke-virtual {p0, p1, p2}, Lcom/amap/mapapi/location/LocationManagerProxy;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "lbs"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public getProviders(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    const-string v1, "lbs"

    invoke-virtual {p0, v1}, Lcom/amap/mapapi/location/LocationManagerProxy;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    const-string v1, "lbs"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "lbs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/mapapi/core/e;->b(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    :cond_0
    return-void
.end method

.method public removeProximityAlert(Landroid/app/PendingIntent;)V
    .locals 4

    const-wide/16 v2, 0x0

    const-string v0, "lbs"

    iget-object v1, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->o:Lcom/amap/mapapi/location/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->o:Lcom/amap/mapapi/location/c;

    invoke-virtual {v0}, Lcom/amap/mapapi/location/c;->a()V

    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->o:Lcom/amap/mapapi/location/c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->l:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->m:J

    iput-wide v2, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->n:D

    iput-wide v2, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->j:D

    iput-wide v2, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->k:D

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeProximityAlert(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public removeUpdates(Landroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->e:Lcom/amap/mapapi/location/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->e:Lcom/amap/mapapi/location/c;

    invoke-virtual {v0}, Lcom/amap/mapapi/location/c;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->e:Lcom/amap/mapapi/location/c;

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public removeUpdates(Landroid/location/LocationListener;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->c:Lcom/amap/mapapi/location/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->c:Lcom/amap/mapapi/location/a;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/location/a;->a(Landroid/location/LocationListener;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_1
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V
    .locals 6

    const-string v0, "lbs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->e:Lcom/amap/mapapi/location/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/mapapi/location/c;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/location/c;-><init>(Lcom/amap/mapapi/location/LocationManagerProxy;)V

    iput-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->e:Lcom/amap/mapapi/location/c;

    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->f:Lcom/amap/mapapi/location/LocationManagerProxy$b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/amap/mapapi/location/LocationManagerProxy$b;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/location/LocationManagerProxy$b;-><init>(Lcom/amap/mapapi/location/LocationManagerProxy;)V

    iput-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->f:Lcom/amap/mapapi/location/LocationManagerProxy$b;

    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->e:Lcom/amap/mapapi/location/c;

    iget-object v1, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->f:Lcom/amap/mapapi/location/LocationManagerProxy$b;

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/amap/mapapi/location/c;->a(Landroid/location/LocationListener;JF)Z

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    .locals 6

    iput-object p1, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->i:Ljava/lang/String;

    const-string v0, "lbs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->c:Lcom/amap/mapapi/location/a;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/amap/mapapi/location/a;->a(JFLandroid/location/LocationListener;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->c:Lcom/amap/mapapi/location/a;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/amap/mapapi/location/a;->a(JFLandroid/location/LocationListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0
.end method
