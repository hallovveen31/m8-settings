.class public Lcom/android/settings/framework/util/HtcParser$Result;
.super Ljava/lang/Object;
.source "HtcParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/util/HtcParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public exception:Ljava/lang/Exception;

.field public value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    .local p0, this:Lcom/android/settings/framework/util/HtcParser$Result;,"Lcom/android/settings/framework/util/HtcParser$Result<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .parameter "exception"

    .prologue
    .line 23
    .local p0, this:Lcom/android/settings/framework/util/HtcParser$Result;,"Lcom/android/settings/framework/util/HtcParser$Result<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/settings/framework/util/HtcParser$Result;->exception:Ljava/lang/Exception;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, this:Lcom/android/settings/framework/util/HtcParser$Result;,"Lcom/android/settings/framework/util/HtcParser$Result<TT;>;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/settings/framework/util/HtcParser$Result;->value:Ljava/lang/Object;

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter "exception"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, this:Lcom/android/settings/framework/util/HtcParser$Result;,"Lcom/android/settings/framework/util/HtcParser$Result<TT;>;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/settings/framework/util/HtcParser$Result;->value:Ljava/lang/Object;

    .line 29
    iput-object p2, p0, Lcom/android/settings/framework/util/HtcParser$Result;->exception:Ljava/lang/Exception;

    .line 30
    return-void
.end method
