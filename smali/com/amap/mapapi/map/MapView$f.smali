.class Lcom/amap/mapapi/map/MapView$f;
.super Landroid/widget/ImageView;
.source "MapView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/mapapi/map/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/mapapi/map/MapView;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/map/MapView;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1976
    iput-object p1, p0, Lcom/amap/mapapi/map/MapView$f;->a:Lcom/amap/mapapi/map/MapView;

    .line 1977
    invoke-static {p1}, Lcom/amap/mapapi/map/MapView;->a(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/MapActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1978
    iput p2, p0, Lcom/amap/mapapi/map/MapView$f;->b:I

    .line 1980
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/mapapi/map/MapView$f;->setClickable(Z)V

    .line 1981
    invoke-virtual {p0, p0}, Lcom/amap/mapapi/map/MapView$f;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1982
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 2040
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 2041
    :goto_0
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView$f;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 2042
    invoke-virtual {p0, v0}, Lcom/amap/mapapi/map/MapView$f;->setVisibility(I)V

    .line 2044
    :cond_0
    return-void

    .line 2040
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 2047
    invoke-virtual {p0, p1}, Lcom/amap/mapapi/map/MapView$f;->setFocusable(Z)V

    .line 2048
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1986
    sget-boolean v0, Lcom/amap/mapapi/core/c;->m:Z

    if-nez v0, :cond_1

    .line 2016
    :cond_0
    :goto_0
    return-void

    .line 1989
    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$f;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->f(Lcom/amap/mapapi/map/MapView;)I

    .line 1990
    const/16 v0, 0x1001

    iget v1, p0, Lcom/amap/mapapi/map/MapView$f;->b:I

    if-ne v0, v1, :cond_3

    .line 1991
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$f;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->g()Lcom/amap/mapapi/map/MapView;

    move-result-object v0

    iget-boolean v0, v0, Lcom/amap/mapapi/map/MapView;->VMapMode:Z

    if-eqz v0, :cond_2

    .line 1992
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$f;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->e()I

    move-result v0

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$f;->a:Lcom/amap/mapapi/map/MapView;

    iget v1, v1, Lcom/amap/mapapi/map/MapView;->mapLevel:I

    if-ge v0, v1, :cond_2

    .line 1993
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$f;->a:Lcom/amap/mapapi/map/MapView;

    iget v0, v0, Lcom/amap/mapapi/map/MapView;->mapLevel:I

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$f;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v1}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/ai$d;->a()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1994
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$f;->a:Lcom/amap/mapapi/map/MapView;

    iget v1, v0, Lcom/amap/mapapi/map/MapView;->mapLevel:I

    iget-object v2, p0, Lcom/amap/mapapi/map/MapView$f;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v2}, Lcom/amap/mapapi/map/MapView;->g(Lcom/amap/mapapi/map/MapView;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/amap/mapapi/map/MapView;->mapLevel:I

    .line 1998
    :cond_2
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$f;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->d(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/MapController;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$f;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v1}, Lcom/amap/mapapi/map/MapView;->g(Lcom/amap/mapapi/map/MapView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/MapController;->a(I)Z

    .line 1999
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$f;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->d(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/MapController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapController;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2000
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$f;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0, v3}, Lcom/amap/mapapi/map/MapView;->a(Lcom/amap/mapapi/map/MapView;I)I

    .line 2003
    :cond_3
    const/16 v0, 0x1002

    iget v1, p0, Lcom/amap/mapapi/map/MapView$f;->b:I

    if-ne v0, v1, :cond_0

    .line 2004
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$f;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->g()Lcom/amap/mapapi/map/MapView;

    move-result-object v0

    iget-boolean v0, v0, Lcom/amap/mapapi/map/MapView;->VMapMode:Z

    if-eqz v0, :cond_4

    .line 2005
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$f;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->e()I

    move-result v0

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$f;->a:Lcom/amap/mapapi/map/MapView;

    iget v1, v1, Lcom/amap/mapapi/map/MapView;->mapLevel:I

    if-ge v0, v1, :cond_4

    .line 2006
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$f;->a:Lcom/amap/mapapi/map/MapView;

    iget v0, v0, Lcom/amap/mapapi/map/MapView;->mapLevel:I

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$f;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v1}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/ai$d;->b()I

    move-result v1

    if-le v0, v1, :cond_4

    .line 2007
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$f;->a:Lcom/amap/mapapi/map/MapView;

    iget v1, v0, Lcom/amap/mapapi/map/MapView;->mapLevel:I

    iget-object v2, p0, Lcom/amap/mapapi/map/MapView$f;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v2}, Lcom/amap/mapapi/map/MapView;->g(Lcom/amap/mapapi/map/MapView;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/amap/mapapi/map/MapView;->mapLevel:I

    .line 2011
    :cond_4
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$f;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->d(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/MapController;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$f;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v1}, Lcom/amap/mapapi/map/MapView;->g(Lcom/amap/mapapi/map/MapView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/MapController;->b(I)Z

    .line 2012
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$f;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->d(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/MapController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapController;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2013
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$f;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0, v3}, Lcom/amap/mapapi/map/MapView;->a(Lcom/amap/mapapi/map/MapView;I)I

    goto/16 :goto_0
.end method
