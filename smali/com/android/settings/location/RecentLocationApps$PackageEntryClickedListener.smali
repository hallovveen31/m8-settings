.class Lcom/android/settings/location/RecentLocationApps$PackageEntryClickedListener;
.super Ljava/lang/Object;
.source "RecentLocationApps.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/RecentLocationApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageEntryClickedListener"
.end annotation


# instance fields
.field private mPackage:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/location/RecentLocationApps;


# direct methods
.method public constructor <init>(Lcom/android/settings/location/RecentLocationApps;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/location/RecentLocationApps$PackageEntryClickedListener;->this$0:Lcom/android/settings/location/RecentLocationApps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/location/RecentLocationApps$PackageEntryClickedListener;->mPackage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 7

    const/4 v4, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "package"

    iget-object v1, p0, Lcom/android/settings/location/RecentLocationApps$PackageEntryClickedListener;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/location/RecentLocationApps$PackageEntryClickedListener;->this$0:Lcom/android/settings/location/RecentLocationApps;

    #getter for: Lcom/android/settings/location/RecentLocationApps;->mActivity:Lcom/htc/preference/HtcPreferenceActivity;
    invoke-static {v0}, Lcom/android/settings/location/RecentLocationApps;->access$000(Lcom/android/settings/location/RecentLocationApps;)Lcom/htc/preference/HtcPreferenceActivity;

    move-result-object v0

    const-class v1, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0f53

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    const/4 v0, 0x1

    return v0
.end method
