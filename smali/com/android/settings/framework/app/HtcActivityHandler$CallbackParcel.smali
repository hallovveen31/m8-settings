.class Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;
.super Ljava/lang/Object;
.source "HtcActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/app/HtcActivityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackParcel"
.end annotation


# instance fields
.field args:Ljava/lang/Object;

.field callback:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;->callback:Ljava/lang/Object;

    .line 70
    return-void
.end method
