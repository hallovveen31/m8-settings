.class public Lcom/a/a/a/c;
.super Ljava/lang/Object;
.source "CdmaCellBean.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/16 v0, 0xa

    iput v0, p0, Lcom/a/a/a/c;->h:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/a/a/a/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 36
    const v0, 0x7fffffff

    if-ge p1, v0, :cond_0

    .line 37
    iput p1, p0, Lcom/a/a/a/c;->a:I

    .line 39
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/a/a/a/c;->c:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/a/a/a/c;->a:I

    return v0
.end method

.method public b(I)V
    .locals 2
    .parameter

    .prologue
    .line 46
    iget v0, p0, Lcom/a/a/a/c;->a:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_0

    .line 47
    iput p1, p0, Lcom/a/a/a/c;->b:I

    .line 49
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/a/a/a/c;->d:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/a/a/a/c;->b:I

    return v0
.end method

.method public c(I)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput p1, p0, Lcom/a/a/a/c;->e:I

    .line 57
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/a/a/a/c;->e:I

    return v0
.end method

.method public d(I)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput p1, p0, Lcom/a/a/a/c;->f:I

    .line 65
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/a/a/a/c;->f:I

    return v0
.end method

.method public e(I)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput p1, p0, Lcom/a/a/a/c;->g:I

    .line 73
    return-void
.end method

.method public f()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/a/a/a/c;->g:I

    return v0
.end method

.method public f(I)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput p1, p0, Lcom/a/a/a/c;->h:I

    .line 81
    return-void
.end method

.method public g()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/a/a/a/c;->h:I

    return v0
.end method
