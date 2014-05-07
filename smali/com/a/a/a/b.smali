.class public Lcom/a/a/a/b;
.super Ljava/lang/Object;
.source "APSFactory.java"


# static fields
.field private static a:Lcom/a/a/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput-object v0, Lcom/a/a/a/b;->a:Lcom/a/a/a/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/a/a/a/f;
    .locals 1
    .parameter

    .prologue
    .line 17
    new-instance v0, Lcom/a/a/a/a;

    invoke-direct {v0, p0}, Lcom/a/a/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/a/a/a/b;->a:Lcom/a/a/a/f;

    .line 18
    sget-object v0, Lcom/a/a/a/b;->a:Lcom/a/a/a/f;

    return-object v0
.end method
