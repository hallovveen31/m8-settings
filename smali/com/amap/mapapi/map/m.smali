.class Lcom/amap/mapapi/map/m;
.super Lcom/amap/mapapi/map/af;
.source "CompassServer.java"


# instance fields
.field private a:Landroid/hardware/SensorManager;

.field private b:Landroid/hardware/Sensor;

.field private c:Landroid/hardware/SensorEventListener;


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/map/ai;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/amap/mapapi/map/af;-><init>(Lcom/amap/mapapi/map/ai;Landroid/content/Context;)V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/mapapi/map/m;->c:Landroid/hardware/SensorEventListener;

    .line 13
    const-string v0, "sensor"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/amap/mapapi/map/m;->a:Landroid/hardware/SensorManager;

    .line 15
    iget-object v0, p0, Lcom/amap/mapapi/map/m;->a:Landroid/hardware/SensorManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/map/m;->b:Landroid/hardware/Sensor;

    .line 17
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/amap/mapapi/map/m;->c:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/amap/mapapi/map/m;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/amap/mapapi/map/m;->c:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private i()Z
    .locals 5

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 49
    iget-object v1, p0, Lcom/amap/mapapi/map/m;->c:Landroid/hardware/SensorEventListener;

    if-eqz v1, :cond_0

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/amap/mapapi/map/m;->a:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/amap/mapapi/map/m;->c:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/amap/mapapi/map/m;->b:Landroid/hardware/Sensor;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 63
    :cond_0
    :goto_0
    return v0

    .line 59
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/hardware/SensorEventListener;)Z
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/amap/mapapi/map/m;->g()V

    .line 21
    iput-object p1, p0, Lcom/amap/mapapi/map/m;->c:Landroid/hardware/SensorEventListener;

    .line 22
    invoke-direct {p0}, Lcom/amap/mapapi/map/m;->i()Z

    move-result v0

    return v0
.end method

.method public a_()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/amap/mapapi/map/m;->i()Z

    .line 32
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/amap/mapapi/map/m;->g()V

    .line 36
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/amap/mapapi/map/m;->g()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/mapapi/map/m;->c:Landroid/hardware/SensorEventListener;

    .line 28
    return-void
.end method
