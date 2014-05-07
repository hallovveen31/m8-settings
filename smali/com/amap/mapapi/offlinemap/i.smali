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
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct/range {p0 .. p5}, Lcom/amap/mapapi/offlinemap/City;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/mapapi/offlinemap/i;->a:Ljava/lang/String;

    .line 7
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/mapapi/offlinemap/i;->b:J

    .line 10
    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/mapapi/offlinemap/i;->c:I

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/mapapi/offlinemap/i;->d:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/mapapi/offlinemap/i;->e:Ljava/lang/String;

    .line 16
    return-void
.end method
