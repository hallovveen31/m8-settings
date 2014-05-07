.class public Lcom/amap/mapapi/map/ai$b;
.super Ljava/lang/Object;
.source "Mediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/mapapi/map/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field b:I

.field final synthetic c:Lcom/amap/mapapi/map/ai;


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/map/ai;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/amap/mapapi/map/ai$b;->c:Lcom/amap/mapapi/map/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/amap/mapapi/map/ai$b;->a:Z

    iput v0, p0, Lcom/amap/mapapi/map/ai$b;->b:I

    invoke-virtual {p0}, Lcom/amap/mapapi/map/ai$b;->f()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/amap/mapapi/map/ai$b;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->e:Lcom/amap/mapapi/map/ai$c;

    invoke-static {v0}, Lcom/amap/mapapi/map/ai$c;->a(Lcom/amap/mapapi/map/ai$c;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/af;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/mapapi/map/af;->c()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$b;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->e:Lcom/amap/mapapi/map/ai$c;

    invoke-static {v0}, Lcom/amap/mapapi/map/ai$c;->b(Lcom/amap/mapapi/map/ai$c;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/amap/mapapi/map/ai$b;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    invoke-static {v0}, Lcom/amap/mapapi/map/ai$a;->a(Lcom/amap/mapapi/map/ai$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/map/ai$b;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$a;->d()V

    :cond_0
    iget v0, p0, Lcom/amap/mapapi/map/ai$b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/mapapi/map/ai$b;->b:I

    iget v0, p0, Lcom/amap/mapapi/map/ai$b;->b:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/amap/mapapi/map/ai$b;->b:I

    rem-int/lit8 v0, v0, 0x14

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$b;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->e:Lcom/amap/mapapi/map/ai$c;

    invoke-static {v0}, Lcom/amap/mapapi/map/ai$c;->a(Lcom/amap/mapapi/map/ai$c;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/af;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/amap/mapapi/map/af;->h()V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/amap/mapapi/map/ai$b;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/amap/mapapi/map/ai$d;->a:Z

    iget-object v0, p0, Lcom/amap/mapapi/map/ai$b;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->e:Lcom/amap/mapapi/map/ai$c;

    invoke-static {v0}, Lcom/amap/mapapi/map/ai$c;->a(Lcom/amap/mapapi/map/ai$c;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/af;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/mapapi/map/af;->a()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$b;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/mapapi/map/ai$b;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai$a;->d:Lcom/amap/mapapi/map/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/mapapi/map/ai$b;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai$a;->d:Lcom/amap/mapapi/map/f;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/f;->a()V

    :cond_2
    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/amap/mapapi/map/ai$b;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->e:Lcom/amap/mapapi/map/ai$c;

    invoke-static {v0}, Lcom/amap/mapapi/map/ai$c;->a(Lcom/amap/mapapi/map/ai$c;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/af;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/mapapi/map/af;->d()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/amap/mapapi/map/ai$b;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->e:Lcom/amap/mapapi/map/ai$c;

    invoke-static {v0}, Lcom/amap/mapapi/map/ai$c;->a(Lcom/amap/mapapi/map/ai$c;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/af;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/mapapi/map/af;->b()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/amap/mapapi/map/ai$b;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->e:Lcom/amap/mapapi/map/ai$c;

    invoke-static {v0}, Lcom/amap/mapapi/map/ai$c;->a(Lcom/amap/mapapi/map/ai$c;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/af;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/mapapi/map/af;->a_()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$b;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->e:Lcom/amap/mapapi/map/ai$c;

    invoke-static {v0}, Lcom/amap/mapapi/map/ai$c;->c(Lcom/amap/mapapi/map/ai$c;)V

    return-void
.end method
