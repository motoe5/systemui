.class Lcom/android/systemui/statusbar/phone/StatusBar$41$1;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$41;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBar$41;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$41;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/StatusBar$41;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$41$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$41;

    .line 4519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 4522
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$41$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$41;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$41;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap7(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 4523
    return-void
.end method
