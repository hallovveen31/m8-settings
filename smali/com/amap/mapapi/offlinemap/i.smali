.class public Lcom/amap/mapapi/offlinemap/i;
.super Lcom/amap/mapapi/offlinemap/City;
.source "downCity.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct/range {p0 .. p5}, Lcom/amap/mapapi/offlinemap/City;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/mapapi/offlinemap/i;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/mapapi/offlinemap/i;->b:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/mapapi/offlinemap/i;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/mapapi/offlinemap/i;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/mapapi/offlinemap/i;->e:Ljava/lang/String;

    return-void
.end method
