.class Lcom/android/settings/location/LocationSettings$2;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Lcom/htc/preference/HtcPreferenceCategory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/htc/preference/HtcPreference;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/settings/location/LocationSettings$2;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/htc/preference/HtcPreference;Lcom/htc/preference/HtcPreference;)I
    .locals 2
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 200
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 197
    check-cast p1, Lcom/htc/preference/HtcPreference;

    .end local p1
    check-cast p2, Lcom/htc/preference/HtcPreference;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/location/LocationSettings$2;->compare(Lcom/htc/preference/HtcPreference;Lcom/htc/preference/HtcPreference;)I

    move-result v0

    return v0
.end method
