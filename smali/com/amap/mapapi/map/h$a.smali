.class Lcom/amap/mapapi/map/h$a;
.super Ljava/lang/Object;
.source "BitmapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/mapapi/map/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Ljava/lang/String;

.field c:Z

.field d:J

.field e:I

.field f:J

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/mapapi/map/ay;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic h:Lcom/amap/mapapi/map/h;


# direct methods
.method constructor <init>(Lcom/amap/mapapi/map/h;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/amap/mapapi/map/h$a;->h:Lcom/amap/mapapi/map/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/amap/mapapi/map/h$a;->a:Landroid/graphics/Bitmap;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/mapapi/map/h$a;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/mapapi/map/h$a;->c:Z

    iput-wide v2, p0, Lcom/amap/mapapi/map/h$a;->d:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/mapapi/map/h$a;->e:I

    iput-wide v2, p0, Lcom/amap/mapapi/map/h$a;->f:J

    iput-object v1, p0, Lcom/amap/mapapi/map/h$a;->g:Ljava/util/List;

    return-void
.end method
