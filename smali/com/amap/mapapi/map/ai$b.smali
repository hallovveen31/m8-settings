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
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 241
    iput-object p1, p0, Lcom/amap/mapapi/map/ai$b;->c:Lcom/amap/mapapi/map/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-boolean v0, p0, Lcom/amap/mapapi/map/ai$b;->a:Z

    .line 270
    iput v0, p0, Lcom/amap/mapapi/map/ai$b;->b:I

    .line 242
    invoke-virtual {p0}, Lcom/amap/mapapi/map/ai$b;->f()V

    .line 243
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 250
    .line 251
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$b;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->e:Lcom/amap/mapapi/map/ai$c;

    invoke-static {v0}, Lcom/amap/mapapi/map/ai$c;->a(Lcom/amap/mapapi/map/ai$c;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 253
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

    .line 254
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/af;

    .line 255
    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0}, Lcom/amap/mapapi/map/af;->c()V

    goto :goto_0

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$b;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->e:Lcom/amap/mapapi/map/ai$c;

    invoke-static {v0}, Lcom/amap/mapapi/map/ai$c;->b(Lcom/amap/mapapi/map/ai$c;)V

    .line 264
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$b;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    invoke-static {v0}, Lcom/amap/mapapi/map/ai$a;->a(Lcom/amap/mapapi/map/ai$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$b;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$a;->d()V

    .line 277
    :cond_0
    iget v0, p0, Lcom/amap/mapapi/map/ai$b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/mapapi/map/ai$b;->b:I

    .line 278
    iget v0, p0, Lcom/amap/mapapi/map/ai$b;->b:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/amap/mapapi/map/ai$b;->b:I

    rem-int/lit8 v0, v0, 0x14

    if-eqz v0, :cond_2

    .line 295
    :cond_1
    return-void

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$b;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->e:Lcom/amap/mapapi/map/ai$c;

    invoke-static {v0}, Lcom/amap/mapapi/map/ai$c;->a(Lcom/amap/mapapi/map/ai$c;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 288
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

    .line 289
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/af;

    .line 290
    if-eqz v0, :cond_3

    .line 293
    invoke-virtual {v0}, Lcom/amap/mapapi/map/af;->h()V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$b;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/amap/mapapi/map/ai$d;->a:Z

    .line 303
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$b;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->e:Lcom/amap/mapapi/map/ai$c;

    invoke-static {v0}, Lcom/amap/mapapi/map/ai$c;->a(Lcom/amap/mapapi/map/ai$c;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 305
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

    .line 306
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/af;

    .line 307
    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0}, Lcom/amap/mapapi/map/af;->a()V

    goto :goto_0

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$b;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/mapapi/map/ai$b;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai$a;->d:Lcom/amap/mapapi/map/f;

    if-eqz v0, :cond_2

    .line 317
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$b;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai$a;->d:Lcom/amap/mapapi/map/f;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/f;->a()V

    .line 320
    :cond_2
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 326
    .line 327
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$b;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->e:Lcom/amap/mapapi/map/ai$c;

    invoke-static {v0}, Lcom/amap/mapapi/map/ai$c;->a(Lcom/amap/mapapi/map/ai$c;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 329
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

    .line 330
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/af;

    .line 331
    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0}, Lcom/amap/mapapi/map/af;->d()V

    goto :goto_0

    .line 336
    :cond_1
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 342
    .line 343
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$b;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->e:Lcom/amap/mapapi/map/ai$c;

    invoke-static {v0}, Lcom/amap/mapapi/map/ai$c;->a(Lcom/amap/mapapi/map/ai$c;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 345
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

    .line 346
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/af;

    .line 347
    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {v0}, Lcom/amap/mapapi/map/af;->b()V

    goto :goto_0

    .line 352
    :cond_1
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 359
    .line 360
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$b;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->e:Lcom/amap/mapapi/map/ai$c;

    invoke-static {v0}, Lcom/amap/mapapi/map/ai$c;->a(Lcom/amap/mapapi/map/ai$c;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 362
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

    .line 363
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/af;

    .line 364
    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {v0}, Lcom/amap/mapapi/map/af;->a_()V

    goto :goto_0

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$b;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->e:Lcom/amap/mapapi/map/ai$c;

    invoke-static {v0}, Lcom/amap/mapapi/map/ai$c;->c(Lcom/amap/mapapi/map/ai$c;)V

    .line 371
    return-void
.end method
