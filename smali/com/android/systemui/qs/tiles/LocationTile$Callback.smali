.class final Lcom/android/systemui/qs/tiles/LocationTile$Callback;
.super Ljava/lang/Object;
.source "LocationTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/LocationTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/LocationTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/LocationTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/LocationTile;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LocationTile$Callback;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/LocationTile;Lcom/android/systemui/qs/tiles/LocationTile$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/LocationTile;
    .param p2, "-this1"    # Lcom/android/systemui/qs/tiles/LocationTile$Callback;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/LocationTile$Callback;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;)V

    return-void
.end method


# virtual methods
.method public onKeyguardShowingChanged()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$Callback;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->refreshState()V

    .line 144
    return-void
.end method

.method public onLocationSettingsChanged(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$Callback;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->refreshState()V

    .line 139
    return-void
.end method
