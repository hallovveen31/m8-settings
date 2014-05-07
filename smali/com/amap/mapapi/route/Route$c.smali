.class Lcom/amap/mapapi/route/Route$c;
.super Lcom/amap/mapapi/route/Route$e;
.source "Route.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/mapapi/route/Route;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/mapapi/route/Route;


# direct methods
.method constructor <init>(Lcom/amap/mapapi/route/Route;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/route/Route$c;->a:Lcom/amap/mapapi/route/Route;

    invoke-direct {p0, p1}, Lcom/amap/mapapi/route/Route$e;-><init>(Lcom/amap/mapapi/route/Route;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/graphics/Paint;
    .locals 1

    sget-object v0, Lcom/amap/mapapi/core/r;->k:Landroid/graphics/Paint;

    return-object v0
.end method

.method protected f(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lcom/amap/mapapi/core/r;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
