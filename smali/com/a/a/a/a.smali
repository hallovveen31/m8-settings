.class public Lcom/a/a/a/a;
.super Ljava/lang/Object;
.source "APS.java"

# interfaces
.implements Lcom/a/a/a/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/a/a$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Lcom/a/a/a/a;

.field private static d:Landroid/content/Context;

.field private static e:Lcom/a/a/a/j;

.field private static f:I

.field private static g:Landroid/net/ConnectivityManager;

.field private static h:Landroid/net/wifi/WifiManager;

.field private static i:Landroid/telephony/TelephonyManager;

.field private static j:Landroid/location/LocationManager;

.field private static k:Landroid/location/LocationListener;

.field private static l:Landroid/location/Location;

.field private static m:Landroid/location/Location;

.field private static n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/a/a/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private static o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/a/a/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private static p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private static q:Lcom/a/a/a/d;

.field private static r:Landroid/telephony/PhoneStateListener;

.field private static s:I

.field private static t:Lcom/a/a/a/a$a;

.field private static u:Landroid/net/wifi/WifiInfo;

.field private static v:Ljava/lang/String;

.field private static w:Lcom/a/a/a/g;

.field private static x:J

.field private static y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    sput-object v2, Lcom/a/a/a/a;->a:Ljava/lang/String;

    sput-object v2, Lcom/a/a/a/a;->b:Ljava/lang/String;

    sput-object v2, Lcom/a/a/a/a;->c:Lcom/a/a/a/a;

    sput-object v2, Lcom/a/a/a/a;->d:Landroid/content/Context;

    sput-object v2, Lcom/a/a/a/a;->e:Lcom/a/a/a/j;

    sput v3, Lcom/a/a/a/a;->f:I

    sput-object v2, Lcom/a/a/a/a;->g:Landroid/net/ConnectivityManager;

    sput-object v2, Lcom/a/a/a/a;->h:Landroid/net/wifi/WifiManager;

    sput-object v2, Lcom/a/a/a/a;->i:Landroid/telephony/TelephonyManager;

    sput-object v2, Lcom/a/a/a/a;->j:Landroid/location/LocationManager;

    sput-object v2, Lcom/a/a/a/a;->k:Landroid/location/LocationListener;

    sput-object v2, Lcom/a/a/a/a;->l:Landroid/location/Location;

    sput-object v2, Lcom/a/a/a/a;->m:Landroid/location/Location;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/a/a/a/a;->n:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/a/a/a/a;->o:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/a/a/a/a;->p:Ljava/util/List;

    new-instance v0, Lcom/a/a/a/d;

    const-string v1, "autonavi00spas$#@!666666"

    invoke-direct {v0, v1}, Lcom/a/a/a/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/a/a/a/a;->q:Lcom/a/a/a/d;

    sput-object v2, Lcom/a/a/a/a;->r:Landroid/telephony/PhoneStateListener;

    const/16 v0, 0xa

    sput v0, Lcom/a/a/a/a;->s:I

    sput-object v2, Lcom/a/a/a/a;->t:Lcom/a/a/a/a$a;

    sput-object v2, Lcom/a/a/a/a;->u:Landroid/net/wifi/WifiInfo;

    sput-object v2, Lcom/a/a/a/a;->v:Ljava/lang/String;

    sput-object v2, Lcom/a/a/a/a;->w:Lcom/a/a/a/g;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/a/a/a/a;->x:J

    sput-boolean v3, Lcom/a/a/a/a;->y:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/a/a/a/a;->d:Landroid/content/Context;

    sput-object p0, Lcom/a/a/a/a;->c:Lcom/a/a/a/a;

    invoke-static {}, Lcom/a/a/a/a;->m()V

    invoke-static {}, Lcom/a/a/a/a;->n()V

    invoke-static {}, Lcom/a/a/a/a;->j()V

    return-void
.end method

.method static synthetic a(I)I
    .locals 0

    sput p0, Lcom/a/a/a/a;->s:I

    return p0
.end method

.method static synthetic a(J)J
    .locals 0

    sput-wide p0, Lcom/a/a/a/a;->x:J

    return-wide p0
.end method

.method static synthetic a(Ljava/util/List;)Ljava/util/List;
    .locals 0

    sput-object p0, Lcom/a/a/a/a;->p:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Landroid/telephony/CellLocation;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/a/a/a/a;->b(Landroid/telephony/CellLocation;Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    sput-object p0, Lcom/a/a/a/a;->m:Landroid/location/Location;

    return-object p0
.end method

.method private static declared-synchronized b(Landroid/telephony/CellLocation;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/CellLocation;",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x4

    const/4 v2, 0x0

    const-class v3, Lcom/a/a/a/a;

    monitor-enter v3

    if-eqz p0, :cond_1

    :try_start_0
    sget-object v1, Lcom/a/a/a/a;->i:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    instance-of v1, p0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    sput v1, Lcom/a/a/a/a;->f:I

    sget-object v1, Lcom/a/a/a/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_1

    new-instance v5, Lcom/a/a/a/e;

    invoke-direct {v5}, Lcom/a/a/a/e;-><init>()V

    move-object v0, p0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/a/a/a/e;->a(I)V

    check-cast p0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/a/a/a/e;->b(I)V

    sget v1, Lcom/a/a/a/a;->s:I

    invoke-virtual {v5, v1}, Lcom/a/a/a/e;->c(I)V

    const/4 v1, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;)V

    const/4 v1, 0x3

    const/4 v6, 0x5

    invoke-virtual {v4, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/a/a/a/e;->b(Ljava/lang/String;)V

    sget-object v1, Lcom/a/a/a/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/NeighboringCellInfo;

    new-instance v5, Lcom/a/a/a/e;

    invoke-direct {v5}, Lcom/a/a/a/e;-><init>()V

    invoke-virtual {v1}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/lit16 v6, v6, -0x85

    invoke-virtual {v5, v6}, Lcom/a/a/a/e;->c(I)V

    invoke-virtual {v1}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/a/a/a/e;->a(I)V

    invoke-virtual {v1}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/a/a/a/e;->b(I)V

    const/4 v1, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;)V

    const/4 v1, 0x3

    const/4 v6, 0x5

    invoke-virtual {v4, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/a/a/a/e;->b(Ljava/lang/String;)V

    sget-object v1, Lcom/a/a/a/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v1, "android.telephony.cdma.CdmaCellLocation"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v1, 0x2

    sput v1, Lcom/a/a/a/a;->f:I

    sget-object v1, Lcom/a/a/a/a;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_1

    new-instance v1, Lcom/a/a/a/c;

    invoke-direct {v1}, Lcom/a/a/a/c;-><init>()V

    check-cast p0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/a/a/a/c;->a(I)V

    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/a/a/a/c;->b(I)V

    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/a/a/a/c;->c(I)V

    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/a/a/a/c;->d(I)V

    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/a/a/a/c;->e(I)V

    sget v2, Lcom/a/a/a/a;->s:I

    invoke-virtual {v1, v2}, Lcom/a/a/a/c;->f(I)V

    const/4 v2, 0x0

    const/4 v5, 0x3

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/a/c;->a(Ljava/lang/String;)V

    const/4 v2, 0x3

    const/4 v5, 0x5

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/a/c;->b(Ljava/lang/String;)V

    sget-object v2, Lcom/a/a/a/a;->o:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method static synthetic c()Landroid/location/Location;
    .locals 1

    sget-object v0, Lcom/a/a/a/a;->m:Landroid/location/Location;

    return-object v0
.end method

.method private declared-synchronized c(Ljava/lang/String;)Lcom/a/a/a/g;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/a/a/a/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/a/a/a/h;->a(Landroid/content/Context;)Lcom/a/a/a/h;

    move-result-object v0

    const-string v1, "http://aps.amap.com/APS/r"

    invoke-virtual {v0, v1, p1}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    sget-boolean v1, Lcom/a/a/a/a;->y:Z

    if-eqz v1, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Lcom/a/a/a/i;

    invoke-direct {v1}, Lcom/a/a/a/i;-><init>()V

    invoke-virtual {v1, v0}, Lcom/a/a/a/i;->b(Ljava/lang/String;)Lcom/a/a/a/g;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/a/a/a/g;->c()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    :goto_1
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    sget-object v1, Lcom/a/a/a/a;->q:Lcom/a/a/a/d;

    new-instance v2, Lcom/a/a/a/i;

    invoke-direct {v2}, Lcom/a/a/a/i;-><init>()V

    invoke-virtual {v2, v0}, Lcom/a/a/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "GBK"

    invoke-virtual {v1, v0, v2}, Lcom/a/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic d()Landroid/net/wifi/WifiManager;
    .locals 1

    sget-object v0, Lcom/a/a/a/a;->h:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic e()Landroid/telephony/TelephonyManager;
    .locals 1

    sget-object v0, Lcom/a/a/a/a;->i:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic f()I
    .locals 1

    sget v0, Lcom/a/a/a/a;->f:I

    return v0
.end method

.method static synthetic g()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/a/a/a/a;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic h()I
    .locals 1

    sget v0, Lcom/a/a/a/a;->s:I

    return v0
.end method

.method static synthetic i()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/a/a/a/a;->o:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static j()V
    .locals 2

    sget-object v0, Lcom/a/a/a/a;->d:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, Lcom/a/a/a/a;->j:Landroid/location/LocationManager;

    new-instance v0, Lcom/a/a/a/a$1;

    invoke-direct {v0}, Lcom/a/a/a/a$1;-><init>()V

    sput-object v0, Lcom/a/a/a/a;->k:Landroid/location/LocationListener;

    return-void
.end method

.method private k()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/a/a/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized l()Ljava/lang/String;
    .locals 14

    const-wide v12, 0x4052400000000000L

    const-wide/high16 v10, 0x4008

    const/4 v9, 0x3

    const/4 v7, 0x0

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/a/a/a/a;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_0
    sget-object v0, Lcom/a/a/a/a;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-ne v0, v9, :cond_1

    new-instance v0, Lcom/a/a/a/a$2;

    invoke-direct {v0, p0}, Lcom/a/a/a/a$2;-><init>(Lcom/a/a/a/a;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    sget-object v0, Lcom/a/a/a/a;->i:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/a;->r:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v0}, Landroid/telephony/PhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellLocation;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<?xml version=\"1.0\" encoding=\"GBK\" ?>"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<location>"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<license>"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/a/a/a/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</license>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<src>"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</src>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<imei>"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/a;->e:Lcom/a/a/a/j;

    invoke-virtual {v1}, Lcom/a/a/a/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/a;->i:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/a;->i:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</imei>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/a/a/a/a;->g:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "<network>"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</network>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    sget v0, Lcom/a/a/a/a;->f:I

    if-ne v0, v2, :cond_a

    const-string v0, "<cdma>0</cdma>"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/a/a/a/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    sget-object v0, Lcom/a/a/a/a;->n:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/e;

    const-string v1, "<mcc>"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/a/a/a/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</mcc>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<mnc>"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/a/a/a/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</mnc>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<lac>"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/a/a/a/e;->c()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</lac>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<cellid>"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/a/a/a/e;->d()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</cellid>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<signal>"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/a/a/a/e;->e()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</signal>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/a/a/a/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_5

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v1, v2

    :goto_0
    sget-object v0, Lcom/a/a/a/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    if-le v1, v2, :cond_3

    const-string v0, "*"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    sget-object v0, Lcom/a/a/a/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/e;

    invoke-virtual {v0}, Lcom/a/a/a/e;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/a/a/a/e;->c()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/a/a/a/e;->d()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/a/a/a/e;->e()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    const-string v0, "<nb>"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</nb>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_1
    sget-object v0, Lcom/a/a/a/a;->j:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/a/a/a/a;->l:Landroid/location/Location;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/a/a/a/a;->l:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    sget-object v2, Lcom/a/a/a/a;->l:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v4, v0, v10

    if-lez v4, :cond_6

    cmpl-double v4, v2, v12

    if-lez v4, :cond_6

    const-string v4, "<gps>1</gps>"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<glong>"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</glong>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<glat>"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</glat>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const/4 v0, 0x0

    sput-object v0, Lcom/a/a/a/a;->l:Landroid/location/Location;

    :cond_7
    :goto_2
    sget-object v0, Lcom/a/a/a/a;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v7

    :goto_3
    sget-object v0, Lcom/a/a/a/a;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    if-le v1, v9, :cond_f

    :cond_8
    const-string v0, "<macs>"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</macs>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    :goto_4
    const-string v0, "</location>"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<?xml version=\"1.0\" encoding=\"GBK\" ?>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<saps>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<src>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</src>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "<sreq>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/a/a/a/a;->q:Lcom/a/a/a/d;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/a/a/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</sreq>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_5
    :try_start_2
    const-string v0, "</saps>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_a
    :try_start_3
    sget v0, Lcom/a/a/a/a;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    const-string v0, "<cdma>1</cdma>"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/a/a/a/a;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    sget-object v0, Lcom/a/a/a/a;->o:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/c;

    const-string v1, "<mcc>"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/a/a/a/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</mcc>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<sid>"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/a/a/a/c;->d()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</sid>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<nid>"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/a/a/a/c;->e()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</nid>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<bid>"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/a/a/a/c;->f()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</bid>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<lon>"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/a/a/a/c;->c()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</lon>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<lat>"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/a/a/a/c;->b()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</lat>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<signal>"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/a/a/a/c;->g()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</signal>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/a/a/a/a;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_5

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v1, v2

    :goto_6
    sget-object v0, Lcom/a/a/a/a;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_c

    if-le v1, v2, :cond_b

    const-string v0, "*"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b
    sget-object v0, Lcom/a/a/a/a;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/c;

    invoke-virtual {v0}, Lcom/a/a/a/c;->d()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/a/a/a/c;->e()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/a/a/a/c;->f()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/a/a/a/c;->g()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<nb>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</nb>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_d
    :try_start_4
    sget-object v0, Lcom/a/a/a/a;->j:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/a/a/a/a;->j:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x4e20

    const/4 v4, 0x0

    sget-object v5, Lcom/a/a/a/a;->k:Landroid/location/LocationListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-wide/16 v0, 0xbb8

    :try_start_5
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_7
    :try_start_6
    sget-object v0, Lcom/a/a/a/a;->m:Landroid/location/Location;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/a/a/a/a;->m:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    sget-object v2, Lcom/a/a/a/a;->m:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v4, v0, v10

    if-lez v4, :cond_e

    cmpl-double v4, v2, v12

    if-lez v4, :cond_e

    const-string v4, "<gps>2</gps>"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<glong>"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</glong>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<glat>"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</glat>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    const/4 v0, 0x0

    sput-object v0, Lcom/a/a/a/a;->m:Landroid/location/Location;

    sget-object v0, Lcom/a/a/a/a;->j:Landroid/location/LocationManager;

    sget-object v1, Lcom/a/a/a/a;->k:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto/16 :goto_2

    :cond_f
    sget-object v0, Lcom/a/a/a/a;->p:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v3, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3

    :cond_10
    sget-object v0, Lcom/a/a/a/a;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-ne v0, v9, :cond_9

    sget-object v0, Lcom/a/a/a/a;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    sput-object v0, Lcom/a/a/a/a;->u:Landroid/net/wifi/WifiInfo;

    sget-object v0, Lcom/a/a/a/a;->u:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/a/a/a/a;->u:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string v0, "<macs>"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/a;->u:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/a;->u:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</macs>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_11
    sget-object v0, Lcom/a/a/a/a;->u:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/a/a/a/a;->u:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto/16 :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    goto/16 :goto_7
.end method

.method private static m()V
    .locals 4

    sget-object v0, Lcom/a/a/a/a;->d:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    sput-object v0, Lcom/a/a/a/a;->h:Landroid/net/wifi/WifiManager;

    new-instance v0, Lcom/a/a/a/a$a;

    sget-object v1, Lcom/a/a/a/a;->c:Lcom/a/a/a/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/a/a/a/a$a;-><init>(Lcom/a/a/a/a;Lcom/a/a/a/a$1;)V

    sput-object v0, Lcom/a/a/a/a;->t:Lcom/a/a/a/a$a;

    sget-object v0, Lcom/a/a/a/a;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/a/a/a/a;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    sput-object v0, Lcom/a/a/a/a;->u:Landroid/net/wifi/WifiInfo;

    new-instance v0, Lcom/a/a/a/a$3;

    invoke-direct {v0}, Lcom/a/a/a/a$3;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    sget-object v0, Lcom/a/a/a/a;->d:Landroid/content/Context;

    sget-object v1, Lcom/a/a/a/a;->t:Lcom/a/a/a/a$a;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private static n()V
    .locals 3

    sget-object v0, Lcom/a/a/a/a;->d:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/a/a/a/a;->g:Landroid/net/ConnectivityManager;

    sget-object v0, Lcom/a/a/a/a;->d:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/a/a/a/a;->i:Landroid/telephony/TelephonyManager;

    sget-object v0, Lcom/a/a/a/a;->i:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/a/a/a/j;->a(Landroid/telephony/TelephonyManager;)Lcom/a/a/a/j;

    move-result-object v0

    sput-object v0, Lcom/a/a/a/a;->e:Lcom/a/a/a/j;

    new-instance v0, Lcom/a/a/a/a$4;

    invoke-direct {v0}, Lcom/a/a/a/a$4;-><init>()V

    sput-object v0, Lcom/a/a/a/a;->r:Landroid/telephony/PhoneStateListener;

    sget-object v0, Lcom/a/a/a/a;->i:Landroid/telephony/TelephonyManager;

    sget-object v1, Lcom/a/a/a/a;->r:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    sget-object v0, Lcom/a/a/a/a;->i:Landroid/telephony/TelephonyManager;

    sget-object v1, Lcom/a/a/a/a;->r:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;)Lcom/a/a/a/g;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/a/a/a/a;->x:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    sget-object v0, Lcom/a/a/a/a;->w:Lcom/a/a/a/g;

    :goto_0
    return-object v0

    :cond_0
    sput-object p1, Lcom/a/a/a/a;->l:Landroid/location/Location;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/a/a/a/a;->y:Z

    :goto_1
    invoke-direct {p0}, Lcom/a/a/a/a;->l()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/a;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/a/a/a/a;->w:Lcom/a/a/a/g;

    if-eqz v1, :cond_2

    sget-object v0, Lcom/a/a/a/a;->w:Lcom/a/a/a/g;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/a/a/a/a;->y:Z

    goto :goto_1

    :cond_2
    sput-object v0, Lcom/a/a/a/a;->v:Ljava/lang/String;

    sget-object v0, Lcom/a/a/a/a;->v:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/a/a/a/a;->c(Ljava/lang/String;)Lcom/a/a/a/g;

    move-result-object v0

    sput-object v0, Lcom/a/a/a/a;->w:Lcom/a/a/a/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/a/a/a/a;->x:J

    sget-object v0, Lcom/a/a/a/a;->w:Lcom/a/a/a/g;

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/a/a/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/a/a/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public b()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    sget-object v0, Lcom/a/a/a/a;->d:Landroid/content/Context;

    sget-object v1, Lcom/a/a/a/a;->t:Lcom/a/a/a/a$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/a/a/a/a;->j:Landroid/location/LocationManager;

    sget-object v1, Lcom/a/a/a/a;->k:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/a/a/a/a;->i:Landroid/telephony/TelephonyManager;

    sget-object v1, Lcom/a/a/a/a;->r:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sget-object v0, Lcom/a/a/a/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/a/a/a/a;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/a/a/a/a;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sput-object v3, Lcom/a/a/a/a;->i:Landroid/telephony/TelephonyManager;

    sput-object v3, Lcom/a/a/a/a;->k:Landroid/location/LocationListener;

    sput-object v3, Lcom/a/a/a/a;->r:Landroid/telephony/PhoneStateListener;

    sput-object v3, Lcom/a/a/a/a;->u:Landroid/net/wifi/WifiInfo;

    sput-object v3, Lcom/a/a/a/a;->c:Lcom/a/a/a/a;

    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/a/a/a/a;->b:Ljava/lang/String;

    return-void
.end method
