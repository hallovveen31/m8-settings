.class Lcom/android/settings/deviceinfo/Constants$MediaDirectory;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaDirectory"
.end annotation


# instance fields
.field final mDirPaths:[Ljava/lang/String;

.field final mKey:Ljava/lang/String;

.field final mPreferenceName:Ljava/lang/String;


# direct methods
.method varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/settings/deviceinfo/Constants$MediaDirectory;->mDirPaths:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/Constants$MediaDirectory;->mKey:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/Constants$MediaDirectory;->mPreferenceName:Ljava/lang/String;

    return-void
.end method
