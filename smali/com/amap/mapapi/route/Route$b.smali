.class Lcom/amap/mapapi/route/Route$b;
.super Lcom/amap/mapapi/route/Route$e;
.source "Route.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/mapapi/route/Route;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/mapapi/route/Route;


# direct methods
.method constructor <init>(Lcom/amap/mapapi/route/Route;)V
    .locals 0
    .parameter

    .prologue
    .line 796
    iput-object p1, p0, Lcom/amap/mapapi/route/Route$b;->a:Lcom/amap/mapapi/route/Route;

    invoke-direct {p0, p1}, Lcom/amap/mapapi/route/Route$e;-><init>(Lcom/amap/mapapi/route/Route;)V

    return-void
.end method


# virtual methods
.method protected f(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 799
    sget-object v0, Lcom/amap/mapapi/core/r;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
