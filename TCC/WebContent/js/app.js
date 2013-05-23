var client;
if (window.XMLHttpRequest) {
	client = new window.XMLHttpRequest;
} else {
	try {
		client = new ActiveXObject("MSXML2.XMLHTTP.3.0");
	} catch (ex) {
		client = false;
	}
}

var getContent = function(e, targetId) {
	
	var method = (e[0].getAttribute("data-method") == null ? e.getAttribute("data-method") : e[0].getAttribute("data-method"));
	var url;
	var elementId = null;
	if(targetId == null || targetId == undefined){
		elementId = (e[0].getAttribute('id')== null ? e.getAttribute('id') : e[0].getAttribute('id'));
		url = (e[0].getAttribute("data-href") == null ? e.getAttribute("data-href") : e[0].getAttribute("data-href"));
		
		
	}else{
		elementId = (targetId[0].getAttribute('id') == null ? targetId.getAttribute('id') : targetId[0].getAttribute('id'));
		url = (targetId[0].getAttribute("data-href") == null ? targetId.getAttribute("data-href")+e.value : targetId[0].getAttribute("data-href")+e.value);
	}
	console.debug(url);
	client.open(method, url, sync = true);
	client.send();
	client.onreadystatechange = function() {
		if (client.readyState == 4 && client.status == 200) {
			//alert('go');
			document.getElementById(elementId).innerHTML = client.responseText;
			if(document.getElementById(elementId).getAttribute('disabled')){
				document.getElementById(elementId).removeAttribute('disabled');
			}
		}
	};

};

getCidades = function(e, targetId){
	var target = document.getElementById(targetId);
	//console.log(target);
	//console.log(e);
	if(e.value != 0)
	getContent(e, target);
	
};