.class Lcom/android/settings/location/LocationSettings$LocationModeInfo;
.super Ljava/lang/Object;
.source "LocationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/LocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocationModeInfo"
.end annotation


# instance fields
.field mChecked:Z

.field mDescription:Ljava/lang/String;

.field mEnabled:Z

.field mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/location/LocationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationSettings;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .parameter
    .parameter "title"
    .parameter "descripString"
    .parameter "enabled"
    .parameter "checked"

    .prologue
    .line 614
    iput-object p1, p0, Lcom/android/settings/location/LocationSettings$LocationModeInfo;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    iput-object p2, p0, Lcom/android/settings/location/LocationSettings$LocationModeInfo;->mTitle:Ljava/lang/String;

    .line 616
    iput-object p3, p0, Lcom/android/settings/location/LocationSettings$LocationModeInfo;->mDescription:Ljava/lang/String;

    .line 617
    iput-boolean p4, p0, Lcom/android/settings/location/LocationSettings$LocationModeInfo;->mEnabled:Z

    .line 618
    iput-boolean p5, p0, Lcom/android/settings/location/LocationSettings$LocationModeInfo;->mChecked:Z

    .line 619
    return-void
.end method
