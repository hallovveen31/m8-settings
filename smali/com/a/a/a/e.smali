.class public Lcom/a/a/a/e;
.super Ljava/lang/Object;
.source "GsmCellBean.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/16 v0, 0xa

    iput v0, p0, Lcom/a/a/a/e;->e:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/a/a/a/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput p1, p0, Lcom/a/a/a/e;->c:I

    .line 34
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lcom/a/a/a/e;->a:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/a/a/a/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput p1, p0, Lcom/a/a/a/e;->d:I

    .line 42
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/a/a/a/e;->b:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/a/a/a/e;->c:I

    return v0
.end method

.method public c(I)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput p1, p0, Lcom/a/a/a/e;->e:I

    .line 50
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/a/a/a/e;->d:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/a/a/a/e;->e:I

    return v0
.end method
