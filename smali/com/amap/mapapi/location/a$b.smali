.class public Lcom/amap/mapapi/location/a$b;
.super Ljava/lang/Object;
.source "IAPSManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/mapapi/location/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:J

.field public b:F

.field public c:Landroid/location/LocationListener;

.field public d:J

.field public e:Z

.field public f:Landroid/location/Location;


# direct methods
.method public constructor <init>(JFLandroid/location/LocationListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/mapapi/location/a$b;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/mapapi/location/a$b;->f:Landroid/location/Location;

    iput-wide p1, p0, Lcom/amap/mapapi/location/a$b;->a:J

    iput p3, p0, Lcom/amap/mapapi/location/a$b;->b:F

    iput-object p4, p0, Lcom/amap/mapapi/location/a$b;->c:Landroid/location/LocationListener;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/amap/mapapi/location/a$b;

    iget-object v2, p0, Lcom/amap/mapapi/location/a$b;->c:Landroid/location/LocationListener;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/amap/mapapi/location/a$b;->c:Landroid/location/LocationListener;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/amap/mapapi/location/a$b;->c:Landroid/location/LocationListener;

    iget-object v3, p1, Lcom/amap/mapapi/location/a$b;->c:Landroid/location/LocationListener;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/location/a$b;->c:Landroid/location/LocationListener;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/location/a$b;->c:Landroid/location/LocationListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method
